// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let num: i32 = 42;
    for num in 0_i32..10 {
        println!("{num}");
    }
    assert_eq!(num, 42);
}