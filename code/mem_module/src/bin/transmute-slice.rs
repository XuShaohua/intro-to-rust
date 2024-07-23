// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

fn main() {
    let nums = [0_i32, 1, 2, 3];

    let slice: &[i32] = unsafe {
        let nums_addr: usize = nums.as_ptr() as usize;
        let len = nums.len();
        mem::transmute([nums_addr, len])
    };
    assert_eq!(slice.len(), 4);
    assert_eq!(slice[2], 2);
    assert_eq!(slice[3], 3);
}
