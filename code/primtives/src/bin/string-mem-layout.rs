// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem::size_of_val;

#[allow(unused_variables)]
#[allow(clippy::size_of_ref)]
fn main() {
    let s: &str = "Rust";
    let s2 = s;
    assert_eq!(s, s2);
    // 字符串切片的长度为4, 因为字符串字面量的值有 4 个字节
    assert_eq!(size_of_val(s), 4);
    // 字符串切片本身是一个切片类型, 其占用的内存是 16 个字节, | ptr: usize | len: usize |
    assert_eq!(size_of_val(&s), 16);
}