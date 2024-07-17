// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem::size_of_val;

#[allow(unused_variables)]
fn main() {
    let s: &str = "Rust";
    let s2 = s;
    assert_eq!(s, s2);
    assert_eq!(size_of_val(&s), 16);
}