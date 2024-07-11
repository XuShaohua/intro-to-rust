// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::ptr;

fn main() {
    let mut msg = String::from("Hello, Rust");
    let msg_ptr = msg.as_mut_ptr();
    // 释放 msg 的堆内存
    drop(msg);
    unsafe {
        // 将 msg 中的字符 `R` 转为小写
        ptr::write_bytes(msg_ptr.offset(8), b'r', 1);
    }
}