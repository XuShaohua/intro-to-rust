// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem::ManuallyDrop;
use std::time::{SystemTime, UNIX_EPOCH};

fn main() {
    // 重置 x 的 Drop Flag:
    // x.drop-flag = 0
    let now = SystemTime::now();
    let timestamp = now.duration_since(UNIX_EPOCH).unwrap_or_default();
    let x: Box::<i32>;

    let millis = timestamp.as_millis();

    if millis % 2 == 0 {
        // 设置 x 的 Drop Flag:
        // x.drop-flag = 1
        // 为 x 分配堆内存, 并设置它的值为42
        x = Box::new(42);
        println!("x: {x}");
        // 这里, ManuallyDrop 会重置 x 的 Drop Flag:
        // x.drop-flag = 0
        let _x_no_dropping = ManuallyDrop::new(x);
    } else if millis % 3 == 0 {
        // 设置 x 的 Drop Flag:
        // x.drop-flag = 1
        // 为 x 分配堆内存, 并设置它的值为41
        x = Box::new(41);
        println!("x: {x}");
    }

    // x 的值超出作用域, 判断要不要 drop 它:
    // if x.drop-flag == 1 {
    //     core::ptr::drop_in_place(x);
    // }
}