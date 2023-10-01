// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]
use std::mem;

#[derive(Debug, Clone, Copy)]
struct Point {
    x: f64,
    y: f64,
}

fn origin() -> Point {
    Point { x: 0.0, y: 0.0 }
}

fn boxed_origin() -> Box<Point> {
    Box::new(Point { x: 0.0, y: 0.0 })
}

fn main() {
    let boxed_point: Box<Point> = Box::new(origin());
    let box_in_box: Box<Box<Point>> = Box::new(boxed_origin());

    println!(
        "mem size of boxed_point: {}",
        mem::size_of_val(&boxed_point)
    );
    println!("mem size of box_in_box: {}", mem::size_of_val(&box_in_box));
    println!("boxed_point: {boxed_point:?}, box_in_box: {box_in_box:?}");
}
