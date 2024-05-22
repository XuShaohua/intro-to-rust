// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::cmp::Ordering;

fn main() {
    let a: f64 = 0.15 + 0.15 + 0.15;
    let b: f64 = 0.1 + 0.1 + 0.25;
    println!("{a} != {b}");
    // a 和 b 并不精确相等.
    assert_ne!(a, b);
    assert_eq!(a.total_cmp(&b), Ordering::Less);
}