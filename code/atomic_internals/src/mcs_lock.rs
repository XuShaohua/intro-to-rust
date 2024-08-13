// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::ptr;
use std::sync::atomic::{AtomicBool, AtomicPtr, Ordering};

use crate::backoff::Backoff;
use crate::cache_padded::CachePadded;
use crate::lock::RawLock;

pub struct McsLock {
    tail: AtomicPtr<CachePadded<Node>>,
}

#[derive(Clone)]
pub struct Token {
    ptr: *mut CachePadded<Node>,
}

struct Node {
    locked: AtomicBool,
    next: AtomicPtr<CachePadded<Node>>,
}

impl Node {
    const fn new() -> Self {
        Self {
            locked: AtomicBool::new(true),
            next: AtomicPtr::new(ptr::null_mut()),
        }
    }
}

impl McsLock {
    #[must_use]
    #[inline]
    pub const fn new() -> Self {
        Self {
            tail: AtomicPtr::new(ptr::null_mut()),
        }
    }
}

impl Default for McsLock {
    #[inline]
    fn default() -> Self {
        Self::new()
    }
}

impl RawLock for McsLock {
    type Token = Token;

    fn lock(&self) -> Self::Token {
        // Allocate a node in current thread.
        let boxed_node: Box<CachePadded<Node>> = Box::new(CachePadded::new(Node::new()));
        let new_node: *mut CachePadded<Node> = Box::into_raw(boxed_node);
        let prev_node: *mut CachePadded<Node> = self.tail.swap(new_node, Ordering::Relaxed);

        if prev_node.is_null() {
            return Token {
                ptr: new_node,
            };
        }
        unsafe {
            (*prev_node).next.store(new_node, Ordering::Release);
        }

        let backoff = Backoff::new();
        while unsafe { (*new_node).locked.load(Ordering::Acquire) } {
            backoff.snooze();
        }

        Token {
            ptr: new_node,
        }
    }

    unsafe fn unlock(&self, token: Self::Token) {
        let node = token.ptr;

        loop {
            let next_node: *mut CachePadded<Node> = (*node).next.load(Ordering::Acquire);
            // `node` is not the tail node in the lock.
            if !next_node.is_null() {
                // Deallocate node in the same thread.
                drop(Box::from_raw(node));
                // Unlock next node
                (*next_node).locked.store(false, Ordering::Release);
                return;
            }

            // `node` is the tail in the lock.
            // Remove it from lock and drop it.
            if self.tail.compare_exchange(node, ptr::null_mut(), Ordering::Release,
                                          Ordering::Relaxed).is_ok() {
                // Deallocate node in the same thread.
                drop(Box::from_raw(node));
                return;
            }
        }
    }
}