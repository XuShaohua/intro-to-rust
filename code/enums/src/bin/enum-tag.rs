// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]
#![allow(clippy::upper_case_acronyms)]

#[derive(Debug)]
enum AGCInstruction {
    TC,
    TCF,
    CCS(u16),
    B(u32),
    BZF,
}

impl AGCInstruction {
    fn tag(&self) -> u8 {
        unsafe { *(self as *const Self as *const u8) }
    }
}

fn main() {
    let t = AGCInstruction::B(42);

    println!("t: {:?}", t);
    println!("tag: {}", t.tag());
}
