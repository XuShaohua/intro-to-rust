// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::time::{SystemTime, UNIX_EPOCH};

fn main() {
    // 函数栈内存在初始完成后, 设置 x.drop-flag
    // x.drop-flag = 0;

    let now = SystemTime::now();
    let timestamp = now.duration_since(UNIX_EPOCH).unwrap_or_default();
    // 声明 x, 但没有初始化它, 所以 x 是 uninit 的
    let x: Box<i32>;

    // 如果毫秒是偶数, 就进入分支
    if timestamp.as_millis().is_multiple_of(2) {
        // 分配堆内存 malloc(4)
        // 并设置堆内存上的值为 42
        // 初始化 x
        x = Box::new(42);
        // 设置 drop-flag 的值
        // x.drop-flag = 1
        println!("x: {x}");
    }

    // x 超出其作用域, 判定要不要释放它, 就像下面的伪代码显示的.
    // if x.drop-flag == 1 {
    //     core::ptr::drop_in_place(*x as *mut i32);
    // }
}
