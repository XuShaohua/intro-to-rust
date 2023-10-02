// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

extern crate alloc;

use alloc::alloc::{alloc, dealloc, Layout};

fn main() {
    unsafe {
        let layout = Layout::new::<u16>();
        // malloc
        let ptr = alloc(layout);

        *ptr = 42;

        println!("ptr address: {ptr:?}");
        println!("value of ptr: {:?}", *ptr);

        // Also modify content of memory after ptr to 10.
        *(ptr.wrapping_add(1)) = 10;
        println!("value of ptr: {:?}", *ptr);

        // free
        dealloc(ptr, layout);
    }
}
