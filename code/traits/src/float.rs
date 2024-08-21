// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

pub trait Float: PartialEq {
    const ZERO: Self;
    const ONE: Self;
    const NEARLY_ZERO: Self;

    fn nearly_equal(self, other: Self) -> bool;

    fn nearly_zero(self) -> bool;
}

impl Float for f32 {
    const ZERO: Self = 0.0;
    const ONE: Self = 1.0;
    #[allow(clippy::cast_precision_loss)]
    const NEARLY_ZERO: Self = 1.0 / (1 << 12) as Self;

    fn nearly_equal(self, other: Self) -> bool {
        (self - other).abs() <= Self::NEARLY_ZERO
    }

    fn nearly_zero(self) -> bool {
        self.nearly_equal(Self::ZERO)
    }
}

impl Float for f64 {
    const ZERO: Self = 0.0;
    const ONE: Self = 1.0;
    const NEARLY_ZERO: Self = 1.0 / (1 << 19) as Self;

    fn nearly_equal(self, other: Self) -> bool {
        (self - other).abs() <= Self::NEARLY_ZERO
    }

    fn nearly_zero(self) -> bool {
        self.nearly_equal(Self::ZERO)
    }
}