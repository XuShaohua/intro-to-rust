// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#[allow(unused_variables)]
fn main() {
    // bool
    let enabled = true;
    let enabled2 = enabled;
    assert_eq!(enabled, enabled2);

    // i32
    let x = 42_i32;
    let x2 = x;
    assert_eq!(x, x2);

    // f64
    let radius = 2.78_f64;
    let radius2 = radius;
    assert_eq!(radius, radius2);

    // array
    let fib = [1, 1, 2, 3, 5, 8];
    let fib2 = fib;
    assert_eq!(fib, fib2);

    // tuple
    let point = (3, 2);
    let point2 = point;
    assert_eq!(point, point2);

    // string slice
    let s = "Rust";
    let s2 = s;
    assert_eq!(s, s2);

    // slice
    let b = &[1, 2, 3];
    let b2 = b;
    assert_eq!(b, b2);

    // char
    let c = '中';
    let c2 = c;
    assert_eq!(c, c2);
}