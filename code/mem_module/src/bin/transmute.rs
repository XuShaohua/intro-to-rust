// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

fn main() {
    let pack: [u8; 4] = [0x01, 0x02, 0x03, 0x04];
    let pack_u32 = unsafe { mem::transmute::<[u8; 4], u32>(pack) };
    assert_eq!(pack_u32, 0x04030201);
}
