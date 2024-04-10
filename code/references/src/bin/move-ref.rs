// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use core::mem::size_of_val;

fn demo0() {
    let mut s = "Hello, ".to_string();
    s += "Rust";
    let t = s;
    assert_eq!(t.len(), 11);
}

fn demo1() {
    let mut s = "Hello, ".to_string();
    assert_eq!(s.len(), 7);
    let t = s;
    s = "World.".to_string();
    assert_eq!(t.len(), 7);
    assert_eq!(s.len(), 6);
    assert_eq!(size_of_val(&s), 24);
}

fn main() {
    demo0();
    demo1();
}
