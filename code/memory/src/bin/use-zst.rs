// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::ptr::addr_of;

struct Empty;

struct ContainsEmpty {
    x: i32,
    e: Empty,
}

fn main() {
    let e1 = Empty;
    let e2 = Empty;
    assert_ne!(addr_of!(e1), addr_of!(e2));
    assert_eq!(size_of_val(&e1), 0);

    assert_eq!(size_of::<ContainsEmpty>(), size_of::<i32>());
}
