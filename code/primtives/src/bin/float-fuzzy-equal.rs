// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use float_cmp::ApproxEq;

#[must_use]
pub fn fuzzy_compare(p1: f64, p2: f64) -> bool {
    p1.to_bits() == p2.to_bits()
}

#[inline]
#[must_use]
pub fn fuzzy_is_zero(p: f64) -> bool {
    fuzzy_compare(p, 0.0)
}

#[must_use]
pub fn fuzzy_compare_f32(p1: f32, p2: f32) -> bool {
    //println!("p1.bits: {}", p1.to_bits());
    //println!("p2.bits: {}", p2.to_bits());
    p1.to_bits() == p2.to_bits()
}

#[inline]
#[must_use]
pub fn fuzzy_is_zero_f32(p: f32) -> bool {
    fuzzy_compare_f32(p, 0.0)
}

fn main() {
    let a: f32 = 0.15 + 0.15 + 0.15;
    let b: f32 = 0.1 + 0.1 + 0.25;
    println!("{} == {}", a, b);
    // Fails, because they are not exactly equal
    assert_ne!(a, b);

    // Fails
    assert!(!fuzzy_compare_f32(a, b));
    assert!(a.approx_eq(b, (0.0, 1)));
}
