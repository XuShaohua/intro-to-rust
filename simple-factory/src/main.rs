// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#![deny(
    warnings,
    clippy::all,
    clippy::cargo,
    clippy::nursery,
    clippy::pedantic
)]

pub trait Door {
    fn width(&self) -> f32;
    fn height(&self) -> f32;
}

struct WoodenDoor {
    width: f32,
    height: f32,
}

impl WoodenDoor {
    #[must_use]
    const fn new(width: f32, height: f32) -> Self {
        Self { width, height }
    }
}

impl Door for WoodenDoor {
    #[inline]
    fn width(&self) -> f32 {
        self.width
    }

    #[inline]
    fn height(&self) -> f32 {
        self.height
    }
}

#[must_use]
pub fn make_door(width: f32, height: f32) -> Box<dyn Door> {
    Box::new(WoodenDoor::new(width, height))
}

fn main() {
    // Make me a new door of 100x200
    let door = make_door(100.0, 200.0);
    println!("door.width: {}, height: {}", door.width(), door.height());

    // Make me a door of 50x100
    let _door2 = make_door(50.0, 100.0);
}
