// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(clippy::module_name_repetitions)]

use std::ops::{Add, Div, Mul, Neg, Sub};

/// A complex number in Cartesian form.
#[derive(Debug, Default, Clone, Copy, PartialEq, Eq, Hash)]
pub struct Complex<T> {
    /// Real part of the complex number.
    pub re: T,

    /// Imaginary part of the complex number.
    pub im: T,
}

pub type Complex32 = Complex<f32>;
pub type Complex64 = Complex<f64>;

impl<T> Complex<T> {
    #[must_use]
    #[inline]
    pub const fn new(re: T, im: T) -> Self {
        Self { re, im }
    }
}

impl<T: Neg<Output = T>> Neg for Complex<T> {
    type Output = Self;

    fn neg(self) -> Self::Output {
        Self {
            re: -self.re,
            im: -self.im,
        }
    }
}

impl<T: Add<T, Output = T>> Add for Complex<T> {
    type Output = Self;

    fn add(self, rhs: Self) -> Self::Output {
        Self {
            re: self.re + rhs.re,
            im: self.im + rhs.im,
        }
    }
}

impl<T: Sub<T, Output = T>> Sub for Complex<T> {
    type Output = Self;

    fn sub(self, rhs: Self) -> Self::Output {
        Self {
            re: self.re - rhs.re,
            im: self.im - rhs.im,
        }
    }
}

impl<T> Mul for Complex<T>
where
    T: Copy + Add<T, Output = T> + Sub<T, Output = T> + Mul<T, Output = T>,
{
    type Output = Self;

    fn mul(self, rhs: Self) -> Self::Output {
        let re = self.re * rhs.re - self.im * rhs.im;
        let im = self.re * rhs.im + self.im * rhs.re;
        Self { re, im }
    }
}

impl<T> Div for Complex<T>
where
    T: Copy + Add<T, Output = T> + Sub<T, Output = T> + Mul<T, Output = T>,
{
    type Output = Self;

    fn div(self, rhs: Self) -> Self::Output {
        let re = self.re * rhs.re + self.im * rhs.im;
        let im = self.im * rhs.re - self.re * rhs.im;
        Self { re, im }
    }
}
