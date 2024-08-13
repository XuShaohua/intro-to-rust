// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::hint;
use std::sync::atomic::{AtomicU32, Ordering};

const SPIN_LIMIT: u32 = 10;
const YIELD_LIMIT: u32 = SPIN_LIMIT * 2;

/// Performance exponential backoff in spin loops.
pub struct Backoff {
    step: AtomicU32,
}

impl Backoff {
    #[must_use]
    #[inline]
    pub const fn new() -> Self {
        Self {
            step: AtomicU32::new(0),
        }
    }

    pub fn reset(&self) {
        self.step.store(0, Ordering::Relaxed);
    }

    /// Backoff in a lock-free loop.
    pub fn spin(&self) {
        let step = self.step.load(Ordering::Relaxed);
        for _ in 0..(1 << step) {
            hint::spin_loop();
        }

        if step <= SPIN_LIMIT {
            self.step.store(step + 1, Ordering::Relaxed);
        }
    }

    /// Backoff in a blocking loop.
    pub fn snooze(&self) {
        let step = self.step.load(Ordering::Relaxed);
        if step <= SPIN_LIMIT {
            for _ in 0..(1 << step) {
                // Call pause() instruction.
                // Notify processor that the code sequence being executed is a spin-wait loop.
                // The processor will check the spinlock and may slow down.
                hint::spin_loop();
            }
        } else {
            // Wait too long.

            // Call sched_yield() syscall, to notify kernel scheduler to pause current thread
            // and run another one.
            std::thread::yield_now();
        }

        let step = self.step.load(Ordering::Relaxed);
        if step <= YIELD_LIMIT {
            self.step.store(step + 1, Ordering::Relaxed);
        }
    }

    pub fn is_completed(&self) -> bool {
        let step = self.step.load(Ordering::Relaxed);
        step > YIELD_LIMIT
    }
}

impl Default for Backoff {
    #[inline]
    fn default() -> Self {
        Self::new()
    }
}