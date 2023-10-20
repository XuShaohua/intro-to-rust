// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(internal_features)]
#![feature(ptr_internals)]

use std::ptr::Unique;

fn main() {
    let mut x = 1_u32;
    let mut ptr = Unique::new(&mut x as *mut u32).expect("Invalid pointer");

    unsafe {
        *ptr.as_ptr() += 1;
    }
    let x_value = unsafe { *ptr.as_ptr() };
    assert_eq!(x_value, 2);
    assert_eq!(x, 2);

    let x_ref = unsafe { ptr.as_mut() };
    *x_ref += 1;
    assert_eq!(x, 3);
}
