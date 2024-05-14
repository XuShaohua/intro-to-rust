// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use color::Color as ArgbColor;

fn main() {
    let text_color = ArgbColor::new(255, 39, 88, 0x0a);
    println!("color: {text_color:?}");
}

pub mod color {
    #[derive(Debug, Default, Clone, Copy, Eq, PartialEq, Hash)]
    pub struct Color {
        pub alpha: u8,
        pub red: u8,
        pub green: u8,
        pub blue: u8,
    }

    impl Color {
        #[must_use]
        #[inline]
        pub const fn new(alpha: u8, red: u8, green: u8, blue: u8) -> Self {
            Self {
                alpha,
                red,
                green,
                blue,
            }
        }
    }
}
