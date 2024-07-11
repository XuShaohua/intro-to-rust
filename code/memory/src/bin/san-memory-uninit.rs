// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem;

fn main() {
    let x_uninit = mem::MaybeUninit::<i32>::uninit();
    let x = unsafe {
        x_uninit.assume_init()
    };
    if x == 0 {
        println!("x is 0");
    }
}