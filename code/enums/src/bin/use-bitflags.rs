// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of_val;

bitflags::bitflags! {
    #[derive(Debug, Clone, Copy, Eq, PartialEq)]
    struct Flags: u32 {
        const A = 0b01;
        const B = 0b10;
        const C = 0b11;
        const ABC = Self::A.bits() | Self::B.bits() | Self::C.bits();
    }
}

fn main() {
    let e1 = Flags::A | Flags::C;
    let e2 = Flags::B | Flags::C;
    assert_eq!((e1 | e2), Flags::ABC);

    println!("size of e2: {}", size_of_val(&e2));
}
