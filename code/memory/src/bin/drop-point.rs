// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

#[derive(Default)]
struct Point {
    pub x: i32,
    pub y: i32,
}

#[derive(Default)]
struct Rectangle {
    pub p1: Point,
    pub p2: Point,
}

impl Drop for Point {
    fn drop(&mut self) {
        println!("Point {} {} ::drop()", self.x, self.y);
    }
}

impl Drop for Rectangle {
    fn drop(&mut self) {
        println!("Rectangle::drop()");
    }
}

fn main() {
    let p = Point::default();
    let _r = Rectangle {
        p1: Point { x: 1, y: 2 },
        p2: Point { x: 3, y: 4 },
    };

    std::mem::drop(p);
}
