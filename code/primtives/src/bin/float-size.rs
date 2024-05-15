// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of_val;

#[allow(clippy::approx_constant)]
fn main() {
    let pi: f32 = 3.141_592_6;

    assert_eq!(size_of_val(&pi), 4);
}