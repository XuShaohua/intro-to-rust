// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn add1() -> i32 {
    let mut x: i32 = 42;
    let x_ref = &mut x;
    *x_ref += 1;
    x
}

fn main() {
    assert_eq!(add1(), 43);
}