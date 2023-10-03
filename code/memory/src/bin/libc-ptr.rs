// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

extern crate libc;

use std::mem;

fn main() {
    unsafe {
        let my_num: *mut i32 = libc::malloc(mem::size_of::<i32>()) as *mut i32;
        if my_num.is_null() {
            panic!("failed to allocate memory");
        }
        libc::free(my_num as *mut libc::c_void);
    }
}
