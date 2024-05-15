// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[must_use]
pub fn nearly_equal_tolerance(p1: f64, p2: f64, tolerance: f64) -> bool {
    (p1 - p2).abs() < tolerance
}

#[must_use]
pub fn nearly_equal(p1: f64, p2: f64) -> bool {
    nearly_equal_tolerance(p1, p2, f64::EPSILON)
}

#[inline]
#[must_use]
pub fn nearly_is_zero(p: f64) -> bool {
    nearly_equal(p, 0.0)
}

fn main() {
    let a: f64 = 0.15 + 0.15 + 0.15;
    let b: f64 = 0.1 + 0.1 + 0.25;
    println!("{a} != {b}");
    // Fails, because they are not exactly equal
    assert_ne!(a, b);
    assert!(nearly_equal(a, b));

    assert!(!nearly_equal(f64::INFINITY, f64::INFINITY));
    assert!(!nearly_equal(f64::NAN, f64::INFINITY));
}
