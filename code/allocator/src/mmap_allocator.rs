// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::alloc::{GlobalAlloc, Layout};
use std::ptr;

use crate::debug_allocator::DebugAllocator;

pub struct MMapAllocator;

impl MMapAllocator {
    unsafe fn map(layout: Layout) -> *mut u8 {
        let map_size = Self::align_layout(layout);
        match nc::mmap(
            ptr::null(),
            map_size,
            nc::PROT_READ | nc::PROT_WRITE,
            nc::MAP_PRIVATE | nc::MAP_ANONYMOUS,
            -1,
            0,
        ) {
            Ok(addr) => addr as *mut u8,
            Err(errno) => {
                DebugAllocator::debug_errno("MMapAllocator::map()", errno);
                ptr::null_mut()
            }
        }
    }

    unsafe fn unmap(ptr: *mut u8, layout: Layout) {
        let map_size = Self::align_layout(layout);
        nc::munmap(ptr as *const _, map_size).unwrap();
    }

    fn align_layout(layout: Layout) -> usize {
        let page_size = nc::PAGE_SIZE;
        let requested_size = layout.size();
        debug_assert!(requested_size > 0);
        if requested_size % page_size == 0 {
            requested_size
        } else {
            requested_size / page_size * page_size + page_size
        }
    }
}

unsafe impl GlobalAlloc for MMapAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        let ptr = Self::map(layout);
        DebugAllocator::debug_layout("MMapAllocator::alloc", ptr, layout);
        ptr
    }

    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        DebugAllocator::debug_layout("MMapAllocator::dealloc", ptr, layout);
        Self::unmap(ptr, layout);
    }
}
