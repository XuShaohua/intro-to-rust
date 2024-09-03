// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let x: i32 = 42;

    // 强制指定 `+` 符号
    let s = format!("Hello, {x:+}");
    assert_eq!(s, "Hello, +42");

    // 使用 `0` 作为填充字符, 需要指定字符串的宽度值
    let s = format!("Hello, {x:#04}");
    assert_eq!(s, "Hello, 0042");

    // 小写的十六进制
    let s = format!("Hello, {x:#x}");
    assert_eq!(s, "Hello, 0x2a");

    // 大写的十六进制
    let s = format!("Hello, {x:#X}");
    assert_eq!(s, "Hello, 0x2A");

    // 二进制
    let s = format!("Hello, {x:#b}");
    assert_eq!(s, "Hello, 0b101010");

    // 八进制
    let s = format!("Hello, {x:#o}");
    assert_eq!(s, "Hello, 0o52");
}