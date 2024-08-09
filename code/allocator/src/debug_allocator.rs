// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(clippy::module_name_repetitions)]
#![allow(clippy::cast_possible_truncation)]

use std::alloc::{GlobalAlloc, Layout, System};
use std::io::{Cursor, Write};

pub struct DebugAllocator;

impl DebugAllocator {
    pub fn debug_errno(context: &'static str, errno: nc::Errno) {
        let buf = [0_u8; 128];
        debug_assert!(context.len() < 32);
        let mut cursor = Cursor::new(buf);
        writeln!(cursor, "{context} failed, {}", nc::strerror(errno)).unwrap();
        let _pos = cursor.position();
        let buf = cursor.into_inner();
        unsafe {
            let stdout = 1;
            let _ret = nc::write(stdout, &buf);
        }
    }

    pub fn debug_layout(fn_name: &'static str, ptr: *mut u8, layout: Layout) {
        debug_assert!(fn_name.len() < 32);
        let buf = [0_u8; 64];
        let mut cursor = Cursor::new(buf);
        writeln!(
            cursor,
            "{fn_name} at 0x{:0x}, layout size: {}",
            ptr as usize,
            layout.size()
        )
        .unwrap();
        let _pos = cursor.position();
        let buf = cursor.into_inner();
        unsafe {
            let stdout = 1;
            let _ret = nc::write(stdout, &buf);
        }
    }
}

unsafe impl GlobalAlloc for DebugAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        let ptr = System.alloc(layout);
        Self::debug_layout("alloc()", ptr, layout);
        ptr
    }

    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        Self::debug_layout("dealloc()", ptr, layout);
        System.dealloc(ptr, layout);
    }
}
