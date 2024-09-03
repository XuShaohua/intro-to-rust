// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let width: usize = 5;
    // 左对齐
    let s = format!("Hello {:<width$}!", 'x');
    assert_eq!(s, "Hello x    !");

    // 居中对齐
    let s = format!("Hello {:^width$}!", 'x');
    assert_eq!(s, "Hello   x  !");

    // 右对齐
    let s = format!("Hello {:>width$}!", 'x');
    assert_eq!(s, "Hello     x!");

    // 左对齐, 使用 `.` 填充
    let s = format!("Hello {:.<width$}!", 'x');
    assert_eq!(s, "Hello x....!");

    // 居中对齐, 使用 `-` 填充
    let s = format!("Hello {:-^width$}!", 'x');
    assert_eq!(s, "Hello --x--!");

    // 右对齐, 用 `0` 填充
    let s = format!("Hello {:0>5}", 'x');
    assert_eq!(s, "Hello 0000x");

    // 整数的十六进制形式, 右对齐, 字符串宽度值为8, 使用 `0` 填充空位
    let s = format!("Hello 0x{:0>8x}", 12345678);
    assert_eq!(s, "Hello 0x00bc614e");
}