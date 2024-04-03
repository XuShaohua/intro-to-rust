// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(internal_features)]
#![feature(lang_items, core_intrinsics, rustc_private)]
#![feature(start)]
#![no_std]
#![no_main]

extern crate alloc;

use alloc::alloc::{GlobalAlloc, Layout};
use core::{
    cell::UnsafeCell,
    intrinsics,
    panic::PanicInfo,
    ptr::null_mut,
    sync::atomic::{AtomicUsize, Ordering::SeqCst},
};

// Defines a simple allocator. From alloc document.
const ARENA_SIZE: usize = 128 * 1024;
const MAX_SUPPORTED_ALIGN: usize = 4096;
#[repr(C, align(4096))] // 4096 == MAX_SUPPORTED_ALIGN
struct SimpleAllocator {
    arena: UnsafeCell<[u8; ARENA_SIZE]>,
    remaining: AtomicUsize, // we allocate from the top, counting down
}

#[global_allocator]
static ALLOCATOR: SimpleAllocator = SimpleAllocator {
    arena: UnsafeCell::new([0x55; ARENA_SIZE]),
    remaining: AtomicUsize::new(ARENA_SIZE),
};

unsafe impl Sync for SimpleAllocator {}

unsafe impl GlobalAlloc for SimpleAllocator {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        let size = layout.size();
        let align = layout.align();

        // `Layout` contract forbids making a `Layout` with align=0, or align not power of 2.
        // So we can safely use a mask to ensure alignment without worrying about UB.
        let align_mask_to_round_down = !(align - 1);

        if align > MAX_SUPPORTED_ALIGN {
            return null_mut();
        }

        let mut allocated = 0;
        if self
            .remaining
            .fetch_update(SeqCst, SeqCst, |mut remaining| {
                if size > remaining {
                    return None;
                }
                remaining -= size;
                remaining &= align_mask_to_round_down;
                allocated = remaining;
                Some(remaining)
            })
            .is_err()
        {
            return null_mut();
        };
        self.arena.get().cast::<u8>().add(allocated)
    }
    unsafe fn dealloc(&self, _ptr: *mut u8, _layout: Layout) {}
}

/// Entry point for this program.
// ensure that this symbol is called `main` in the output
#[no_mangle]
pub extern "C" fn main(_argc: i32, _argv: *const *const u8) -> i32 {
    let msg = "Hello, no-std\n";
    unsafe {
        let ret = nc::write(1, msg.as_ptr() as usize, msg.len());
        assert!(ret.is_ok());
    }
    0
}

/// Real entry point of any C program.
/// crt0.o defines this function.
/// Or do the same thing by importing `libc` crate.
#[no_mangle]
pub extern "C" fn __libc_start_main(argc: i32, argv: *const *const u8) {
    let state = main(argc, argv);
    unsafe {
        nc::exit(state);
    }
}

// These functions are used by the compiler, but not for a bare-bones hello world.
// These are normally provided by std.
#[lang = "eh_personality"]
#[no_mangle]
pub extern "C" fn rust_eh_personality() {}

#[lang = "panic_impl"]
#[no_mangle]
pub fn rust_begin_panic(_info: &PanicInfo) -> ! {
    intrinsics::abort()
}
