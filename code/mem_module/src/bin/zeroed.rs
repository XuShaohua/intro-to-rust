// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem;

#[derive(Debug, Default, Clone, Copy, Eq, PartialEq, Hash)]
pub struct Point {
    pub x: i32,
    pub y: i32,
}

fn main() {
    let zeroed_point: Point = unsafe { mem::zeroed() };
    let default_point = Point::default();
    assert_eq!(zeroed_point, default_point);
}