// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem;

fn main() {
    let msg = String::from("Hello, Rust");
    mem::forget(msg);
    // msg 的堆内存没有被释放, 产生了内存泄露
}