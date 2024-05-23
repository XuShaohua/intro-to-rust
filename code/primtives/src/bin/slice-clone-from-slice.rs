// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug, Default, Clone, PartialEq)]
pub struct Point {
    pub x: f64,
    pub y: f64,
}

fn main() {
    let points = &[
        Point { x: 3.0, y: 4.0 },
        Point { x: 4.0, y: 3.0 },
    ];

    let mut points2 = vec![Point::default(); 2];
    points2.clone_from_slice(points);
    assert_eq!(points2, points);
}