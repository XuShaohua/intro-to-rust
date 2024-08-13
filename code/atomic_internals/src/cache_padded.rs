// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

//! Align the integer number and add pads to the length of cache line.
//!
//! The l1dcache line size if checked at runtime.

use std::fs;
use std::ops::{Deref, DerefMut};
use std::sync::OnceLock;

/// Get l1dcache line size at runtime.
pub fn get_l1dcache() -> usize {
    // See https://stackoverflow.com/questions/794632/programmatically-get-the-cache-line-size
    static SIZE: OnceLock<usize> = OnceLock::new();

    *SIZE.get_or_init(|| {
        let path = "/sys/devices/system/cpu/cpu0/cache/index0/coherency_line_size";
        let content = fs::read_to_string(path).unwrap();
        let size: usize = content.trim().parse().unwrap();
        let compiled_size = get_l1dcache_compiled();
        debug_assert_eq!(compiled_size, size);
        size
    })
}

#[must_use]
#[inline]
pub const fn get_l1dcache_compiled() -> usize {
    size_of::<CachePadded::<i32>>()
}

#[derive(Debug, Default, Clone, Copy, Eq, PartialEq, Hash)]
#[cfg_attr(cache_size = "32",
    repr(align(32))
)]
#[cfg_attr(cache_size = "64",
    repr(align(64))
)]
#[cfg_attr(cache_size = "128",
    repr(align(128))
)]
#[cfg_attr(cache_size = "256",
    repr(align(256))
)]
pub struct CachePadded<T>(T);

impl<T> CachePadded<T> {
    #[must_use]
    #[inline]
    pub const fn new(value: T) -> Self {
        Self(value)
    }

    #[must_use]
    #[inline]
    pub fn into_inner(self) -> T {
        self.0
    }
}

unsafe impl<T: Send> Send for CachePadded<T> {}
unsafe impl<T: Sync> Sync for CachePadded<T> {}

impl<T> AsRef<T> for CachePadded<T> {
    fn as_ref(&self) -> &T {
        &self.0
    }
}

impl<T> Deref for CachePadded<T> {
    type Target = T;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl<T> DerefMut for CachePadded<T> {
    #[inline]
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl<T> From<T> for CachePadded<T> {
    #[inline]
    fn from(value: T) -> Self {
        Self(value)
    }
}

#[cfg(test)]
mod tests {
    use super::{CachePadded, get_l1dcache, get_l1dcache_compiled};

    #[test]
    fn test_get_cache() {
        let size = size_of::<CachePadded::<i32>>();
        let align = align_of::<CachePadded<i32>>();
        println!("size: {size}, align: {align}");

        let compiled_size = get_l1dcache_compiled();
        let runtime_size = get_l1dcache();
        println!("runtime size: {runtime_size}");
        assert_eq!(compiled_size, runtime_size);
    }
}