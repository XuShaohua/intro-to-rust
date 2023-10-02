// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::alloc::{GlobalAlloc, Layout, System};

struct MyAllocator {
    mem_used: usize,
}

impl MyAllocator {
    pub const fn new() -> Self {
        Self { mem_used: 0 }
    }
}

unsafe impl GlobalAlloc for MyAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        System.alloc(layout)
    }

    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        System.dealloc(ptr, layout)
    }
}

#[global_allocator]
static GLOBAL_ALLOC: MyAllocator = MyAllocator::new();

#[allow(clippy::vec_init_then_push)]
fn main() {
    // This `Vec` will allocate memory through `GLOBAL` above
    let mut v = Vec::new();
    v.push(1);
    v.push(2);
    println!("v: {:#?}", v);
}
