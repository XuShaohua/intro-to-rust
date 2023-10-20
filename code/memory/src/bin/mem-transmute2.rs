// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug, Clone, Copy)]
pub enum Shape {
    Rectangle,
    Circle,
    Ellipse,
}

impl Shape {
    pub fn tag(&self) -> u8 {
        unsafe { std::mem::transmute(*self) }
    }
}

fn main() {
    let c = Shape::Circle;
    println!("c.tag() is {}", c.tag());
}
