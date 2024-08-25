// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

trait Shape {
    fn new() -> Self;
    fn area(&self) -> f64;
}

#[derive(Debug, Default, Clone, Copy, PartialEq)]
struct Point {
    x: f64,
    y: f64,
}

#[derive(Debug, Default, Clone, PartialEq)]
struct Circle {
    origin: Point,
    radius: f64,
}

#[derive(Debug, Default, Clone, PartialEq)]
struct Rectangle {
    top_left: Point,
    width: f64,
    height: f64,
}

impl Shape for Circle {
    fn new() -> Self {
        Self::default()
    }

    fn area(&self) -> f64 {
        self.radius.powi(2) * std::f64::consts::PI
    }
}

impl Shape for Rectangle {
    fn new() -> Self {
        Self::default()
    }

    fn area(&self) -> f64 {
        self.width * self.height
    }
}

fn main() {}
