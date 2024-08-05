// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::error::Error;
use std::fmt::{Debug, Display, Formatter};
use std::hint::spin_loop;
use std::sync::atomic::{AtomicBool, Ordering};

use crate::lock::{RawLock, RawTryLock};

pub struct SpinLock {
    inner: AtomicBool,
}

impl Default for SpinLock {
    fn default() -> Self {
        Self {
            inner: AtomicBool::new(false),
        }
    }
}

impl RawLock for SpinLock {
    type Token = ();

    fn lock(&self) -> Self::Token {
        while let Err(_result) = self.inner.compare_exchange(false, true, Ordering::Acquire,
                                                             Ordering::Acquire) {
            spin_loop();
        }
    }

    unsafe fn unlock(&self, _token: Self::Token) {
        self.inner.store(false, Ordering::Release);
    }
}

pub enum LockError {
    Failed,
}

impl Debug for LockError {
    fn fmt(&self, _f: &mut Formatter<'_>) -> std::fmt::Result {
        todo!()
    }
}

impl Display for LockError {
    fn fmt(&self, _f: &mut Formatter<'_>) -> std::fmt::Result {
        todo!()
    }
}

impl Error for LockError {}

impl RawTryLock for SpinLock {
    type Error = LockError;

    fn try_lock(&self) -> Result<Self::Token, Self::Error> {
        if self.inner.compare_exchange(false, true, Ordering::Acquire,
                                       Ordering::Acquire).is_ok() {
            Ok(())
        } else {
            Err(LockError::Failed)
        }
    }
}