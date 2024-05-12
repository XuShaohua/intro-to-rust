// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug, Clone, Eq, PartialEq, Hash)]
pub struct Point {
    x: i32,
    y: i32,
}

impl Default for Point {
    fn default() -> Self {
        Self::new()
    }
}

impl Point {
    #[must_use]
    #[inline]
    pub const fn new() -> Self {
        Self { x: 0, y: 0 }
    }

    #[must_use]
    #[inline]
    pub const fn from_xy(x: i32, y: i32) -> Self {
        Self { x, y }
    }

    #[inline]
    pub fn set_x(&mut self, x: i32) {
        self.x = x;
    }

    #[inline]
    pub fn set_y(&mut self, y: i32) {
        self.y = y;
    }

    #[must_use]
    #[inline]
    pub const fn x(&self) -> i32 {
        self.x
    }

    #[must_use]
    #[inline]
    pub const fn y(&self) -> i32 {
        self.y
    }
}

fn main() {
    // let mut point: Point = Point {x: 3, y: 4};
    let mut point: Point = Point::from_xy(3, 4);
    // point.x = 2;
    point.set_x(2);
    // let y: i32 = point.y;
    let y: i32 = point.y();
    println!("y: {y}");
}
