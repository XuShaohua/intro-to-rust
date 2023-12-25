// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use std::ops::{Add, AddAssign, Mul, MulAssign, Neg, Sub, SubAssign};

/// `Vector2D` provides an alternative name for `Point`.
///
/// `Vector2D` and `Point` can be used interchangeably for all purposes.
pub type Vector2D = Point;

#[derive(Debug, Default, Clone, Copy, PartialEq)]
pub struct Point {
    x: f32,
    y: f32,
}

impl Point {
    #[must_use]
    pub const fn from_xy(x: f32, y: f32) -> Self {
        Self { x, y }
    }

    /// Returns x-axis value of `` or vector.
    #[must_use]
    pub const fn x(&self) -> f32 {
        self.x
    }

    /// Returns y-axis value of `` or vector.
    #[must_use]
    pub const fn y(&self) -> f32 {
        self.y
    }

    /// Sets new values x and y.
    pub fn set(&mut self, x: f32, y: f32) {
        self.x = x;
        self.y = y;
    }

    /// Sets x to absolute value of `pt.x`; and y to absolute value of `pt.y`.
    pub fn set_abs(&mut self, pt: Self) {
        self.x = pt.x.abs();
        self.y = pt.y.abs();
    }

    /// Adds offset (dx, dy) to ``.
    pub fn offset(&mut self, dx: f32, dy: f32) {
        self.x += dx;
        self.y += dy;
    }
}

impl Add<Self> for Point {
    type Output = Self;
    fn add(self, other: Self) -> Self {
        Self {
            x: self.x + other.x,
            y: self.y + other.y,
        }
    }
}

impl AddAssign<Self> for Point {
    fn add_assign(&mut self, other: Self) {
        self.x += other.x;
        self.y += other.y;
    }
}

impl Sub<Self> for Point {
    type Output = Self;
    fn sub(self, other: Self) -> Self {
        Self {
            x: self.x - other.x,
            y: self.y - other.y,
        }
    }
}

impl SubAssign<Self> for Point {
    fn sub_assign(&mut self, other: Self) {
        self.x -= other.x;
        self.y -= other.y;
    }
}

impl Neg for Point {
    type Output = Self;

    fn neg(self) -> Self {
        Self {
            x: -self.x,
            y: -self.y,
        }
    }
}

impl Mul<f32> for Point {
    type Output = Self;
    fn mul(self, scale: f32) -> Self {
        Self {
            x: self.x * scale,
            y: self.y * scale,
        }
    }
}

impl MulAssign<f32> for Point {
    fn mul_assign(&mut self, scale: f32) {
        self.x *= scale;
        self.y *= scale;
    }
}
