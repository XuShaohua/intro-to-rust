// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn fibonacci(n: i32) -> i32 {
    if dbg!(n == 1 || n == 2) {
        return 1;
    }
    dbg!(fibonacci(n - 1) + fibonacci(n - 2))
}

fn main() {
    let fib = fibonacci(5);
    assert_eq!(fib, 5);
}