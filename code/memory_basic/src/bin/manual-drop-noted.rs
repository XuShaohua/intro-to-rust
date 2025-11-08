// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::time::{SystemTime, UNIX_EPOCH};

fn main() {
    // 设置 x 的 Drop Flag
    // x.drop-flag = 0;
    let now = SystemTime::now();
    let timestamp = now.duration_since(UNIX_EPOCH).unwrap_or_default();
    let x: Box<i32>;

    if timestamp.as_millis().is_multiple_of(2) {
        // 设置 x.drop-flag = 1
        // 为 x 分配堆内存, 并设置其值为 42
        x = Box::new(42);
        println!("x: {x}");
        // 设置 x.drop-flag = 0
        // 调用 core::mem::drop(x);
        drop(x);
    }

    // 判断 x.drop-flag
    // if x.drop-flag == 1 {
    //     core::ptr::drop_in_place(*x as *mut i32);
    // }
}
