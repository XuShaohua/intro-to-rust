// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ptr;

#[derive(Debug, Default)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let mut point = Point::default();
    let x_ptr: *const i32 = ptr::addr_of!(point.x);
    unsafe {
        assert_eq!(ptr::read(x_ptr), 0);
    }
    let y_ptr: *mut i32 = ptr::addr_of_mut!(point.y);
    unsafe {
        ptr::write(y_ptr, 42);
    }
    assert_eq!(point.y, 42);
}
