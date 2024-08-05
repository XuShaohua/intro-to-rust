// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

//! Defines Lock traits

use std::cell::UnsafeCell;
use std::marker::PhantomData;
use std::ops::{Deref, DerefMut};

pub trait RawLock: Default + Send {
    type Token: Clone;

    fn lock(&self) -> Self::Token;

    /// # Safety
    unsafe fn unlock(&self, token: Self::Token);
}

pub trait RawTryLock: RawLock {
    type Error: std::error::Error;

    /// # Errors
    ///
    /// Returns error if failed to lock.
    fn try_lock(&self) -> Result<Self::Token, Self::Error>;
}

pub struct Lock<L: RawLock, T> {
    lock: L,
    data: UnsafeCell<T>,
}

pub struct LockGuard<'a, L: RawLock, T> {
    token: L::Token,
    lock: &'a Lock<L, T>,
    // !Send + !Sync
    _marker: PhantomData<*const T>,
}

unsafe impl<L: RawLock, T: Send> Send for Lock<L, T> {}
unsafe impl<L: RawLock, T: Send> Sync for Lock<L, T> {}

impl<L: RawLock, T> Lock<L, T> {
    pub fn new(value: T) -> Self {
        Self {
            lock: L::default(),
            data: UnsafeCell::new(value),
        }
    }

    pub fn into_inner(self) -> T {
        self.data.into_inner()
    }

    pub fn lock_guard(&self) -> LockGuard<L, T> {
        let token = self.lock.lock();
        LockGuard {
            token,
            lock: self,
            _marker: PhantomData,
        }
    }
}

impl<L: RawTryLock, T> Lock<L, T> {
    /// # Errors
    ///
    /// Returns error if failed to lock.
    pub fn try_lock(&self) -> Result<LockGuard<L, T>, L::Error> {
        self.lock.try_lock().map(|token| LockGuard {
            token,
            lock: self,
            _marker: PhantomData,
        })
    }
}

impl<'a, L: RawLock, T> Deref for LockGuard<'a, L, T> {
    type Target = T;

    fn deref(&self) -> &Self::Target {
        unsafe {
            &*self.lock.data.get()
        }
    }
}

impl<'a, L: RawLock, T> DerefMut for LockGuard<'a, L, T> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        unsafe {
            &mut *self.lock.data.get()
        }
    }
}