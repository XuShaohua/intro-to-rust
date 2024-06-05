// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn fibonacci(mut n: i32) -> i32 {
    debug_assert!(n >= 1);
    let mut x = 1;
    let mut y = 0;
    // 换成 while true 后就会编译失败.
    // while true {
    loop {
        (x, y) = (x + y, x);
        n -= 1;
        if n == 1 {
            return x;
        }
    }
}

fn main() {
    assert_eq!(fibonacci(10), 55);
}