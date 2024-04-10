// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
    desc: String,
}

fn main() {
    let p = Point {
        x: 42,
        y: 0,
        desc: "Hello".to_string(),
    };

    match &p {
        Point { x: 0, y: 0, .. } => println!("at origin point"),
        Point { x, y: 0, .. } => println!("on x axes: {}", x),
        Point { x: 0, y, .. } => println!("on y axes: {}", y),
        Point { desc, .. } => println!("others with desc: {}", desc),
    }
    println!("p: {:?}", p);
}
