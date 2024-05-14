// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of_val;

#[allow(unused_variables)]
fn main() {
    let you: char = '你';
    let char_a: char = 'a';
    assert_eq!(size_of_val(&you), 4);
}
