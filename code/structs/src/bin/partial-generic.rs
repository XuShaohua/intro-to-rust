// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

struct GeneralVal<T>(T);

impl GeneralVal<i32> {
    pub fn int_value(&self) -> i32 {
        self.0
    }
}

impl GeneralVal<f64> {
    pub fn double(&self) -> f64 {
        self.0 * 2.0
    }
}

impl<T> GeneralVal<T> {
    #[allow(dead_code)]
    pub fn value(&self) -> &T {
        &self.0
    }
}

fn main() {
    let v = GeneralVal(42);
    println!("val: {}", v.int_value());

    #[allow(clippy::approx_constant)]
    let f = GeneralVal(3.14_f64);
    println!("double: {}", f.double());
}
