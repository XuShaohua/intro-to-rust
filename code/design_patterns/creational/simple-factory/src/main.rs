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

/// 门的接口
pub trait Door {
    fn width(&self) -> f32;
    fn height(&self) -> f32;
}

/// 用于保存木门的内部属性, 它们不是 `pub` 的.
struct WoodenDoor {
    width: f32,
    height: f32,
}

impl WoodenDoor {
    /// 木门的构造函数, 要注意, 它并不是 `pub` 的.
    #[must_use]
    #[inline]
    const fn new(width: f32, height: f32) -> Self {
        Self { width, height }
    }
}

/// 为木门实现门的接口
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

/// 简单工厂函数, 它返回的是一个 trait object
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
