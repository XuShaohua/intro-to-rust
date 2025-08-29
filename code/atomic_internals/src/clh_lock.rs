// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::atomic::{AtomicBool, AtomicPtr, Ordering};

use crate::backoff::Backoff;
use crate::cache_padded::CachePadded;
use crate::lock::RawLock;

pub struct ClhLock {
    tail: AtomicPtr<CachePadded<Node>>,
}

struct Node {
    locked: AtomicBool,
}

#[derive(Clone)]
pub struct Token {
    ptr: *const CachePadded<Node>,
}

impl Node {
    #[must_use]
    #[inline]
    const fn new(locked: bool) -> Self {
        Self {
            locked: AtomicBool::new(locked),
        }
    }
}

impl ClhLock {
    #[must_use]
    #[inline]
    pub fn new() -> Self {
        let boxed_node: Box<CachePadded<Node>> = Box::new(CachePadded::new(Node::new(false)));
        let node: AtomicPtr<CachePadded<Node>> = AtomicPtr::new(Box::into_raw(boxed_node));
        Self { tail: node }
    }
}

impl Default for ClhLock {
    #[inline]
    fn default() -> Self {
        Self::new()
    }
}

impl RawLock for ClhLock {
    type Token = Token;

    fn lock(&self) -> Self::Token {
        let new_boxed_node: Box<CachePadded<Node>> = Box::new(CachePadded::new(Node::new(true)));
        let new_node: *mut CachePadded<Node> = Box::into_raw(new_boxed_node);
        let prev_node: *mut CachePadded<Node> = self.tail.swap(new_node, Ordering::Relaxed);
        let backoff = Backoff::new();

        while unsafe { (&(*prev_node)).locked.load(Ordering::Acquire) } {
            backoff.snooze();
        }

        drop(unsafe { Box::from_raw(prev_node) });

        Token { ptr: new_node }
    }

    unsafe fn unlock(&self, token: Self::Token) {
        (&(*token.ptr)).locked.store(false, Ordering::Release);
    }
}
