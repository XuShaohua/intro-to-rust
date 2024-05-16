// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of_val;

#[allow(clippy::approx_constant)]
fn main() {
    let tuple: (i32, f64, bool, char) = (1, 3.14, true, 'a');
    assert_eq!(size_of_val(&tuple), 24);
    assert_eq!(size_of_val(&tuple.0), 4);
    assert_eq!(size_of_val(&tuple.1), 8);
    assert_eq!(size_of_val(&tuple.2), 1);
    assert_eq!(size_of_val(&tuple.3), 4);
}