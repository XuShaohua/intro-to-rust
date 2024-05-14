// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of_val;

#[allow(unused_variables)]
fn main() {
    let count: i32 = 0x12345678;
    let alpha: u8 = 0xff;

    assert_eq!(size_of_val(&count), 4);
    assert_eq!(size_of_val(&alpha), 1);
}