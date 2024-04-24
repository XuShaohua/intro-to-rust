// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

fn main() {
    let mut x = [1, 2, 3];
    let mut y = [4, 5];

    mem::swap(&mut x[0], &mut y[0]);
    assert_eq!(x, [4, 2, 3]);
    assert_eq!(y, [1, 5]);
}
