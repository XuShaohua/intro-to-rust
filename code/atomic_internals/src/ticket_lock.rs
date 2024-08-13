// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::atomic::{AtomicUsize, Ordering};
use std::thread;

use crate::lock::RawLock;

pub struct TicketLock {
    curr: AtomicUsize,
    next: AtomicUsize,
}

impl Default for TicketLock {
    fn default() -> Self {
        Self {
            curr: AtomicUsize::new(0),
            next: AtomicUsize::new(0),
        }
    }
}

impl RawLock for TicketLock {
    type Token = usize;

    fn lock(&self) -> Self::Token {
        let ticket = self.next.fetch_add(1, Ordering::Relaxed);

        while self.curr.load(Ordering::Acquire) != ticket {
            thread::yield_now();
        }

        ticket
    }

    unsafe fn unlock(&self, token: Self::Token) {
        self.curr.store(token.wrapping_add(1), Ordering::Relaxed);
    }
}