// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut x: i32 = 0;
    let mut y: i32 = 1;
    let accum: i32 = loop {
        (x, y) = (x + y, x);
        if x > 30 {
            break x + y;
        }
    };
    assert_eq!(accum, 55);
}