// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn fibonacci(mut n: i32) -> i32 {
    debug_assert!(n >= 0);
    let mut x: i32 = 0;
    let mut y: i32 = 1;
    loop {
        (x, y) = (x + y, x);
        n -= 1;
        if n == 0 {
            return x;
        }
    }
}

fn main() {
    assert_eq!(fibonacci(1), 1);
    assert_eq!(fibonacci(2), 1);
    assert_eq!(fibonacci(10), 55);
}