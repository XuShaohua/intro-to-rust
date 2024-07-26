// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut x = 1;
    let mut y = 1;

    let mut add = || {
        (x, y) = (x + y, x);
    };

    add();
    add();
    println!("x: {x}, y: {y}");
    assert_eq!(x, 3);
}
