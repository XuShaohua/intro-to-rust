// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(unused_variables, dead_code)]

use std::mem::size_of;

pub enum WebEvent {
    PageLoad,
    PageUnload,
    KeyPress(char),
    Click { x: i32, y: i32 },
}

fn main() {
    assert_eq!(size_of::<char>(), 4);
    assert_eq!(size_of::<WebEvent>(), 12);
    assert_eq!(size_of::<String>(), 24);

    let mut s = "Hello, world".to_owned();
    s.reserve(3);
    println!("len: {}, cap: {}", s.len(), s.capacity());
}
