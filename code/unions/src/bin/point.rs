// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(dead_code)]

#[repr(u32)]
pub enum PointPrecision {
    F32,
    F64,
}

#[repr(C)]
union PointValue {
    v_f32: f32,
    v_f64: f64,
}

#[repr(C)]
struct Point {
    tag: PointPrecision,
    v: PointValue,
}

impl Point {
    pub const fn new_f32(value: f32) -> Self {
        Self {
            tag: PointPrecision::F32,
            v: PointValue { v_f32: value },
        }
    }

    pub const fn new_f64(value: f64) -> Self {
        Self {
            tag: PointPrecision::F64,
            v: PointValue { v_f64: value },
        }
    }

    #[allow(clippy::match_like_matches_macro)]
    pub fn is_zero(&self) -> bool {
        unsafe {
            match self {
                Self { tag: PointPrecision::F32, v: PointValue { v_f32: 0.0 } } => true,
                Self { tag: PointPrecision::F64, v: PointValue { v_f64: 0.0 } } => true,
                _ => false,
            }
        }
    }
}

fn main() {
    let point = Point::new_f32(3.12);
    assert!(!point.is_zero());
}