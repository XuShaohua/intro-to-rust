// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let expected = "Hello x    !";

    // 注意这里是直接指定宽度值 5
    let s = format!("Hello {:5}!", 'x');
    assert_eq!(s, expected);

    // 这里 `{:1$}` 引用了位置参数 1 的值, 作为字符串的宽度值
    let s = format!("Hello {0:1$}!", "x", 5);
    assert_eq!(s, expected);

    // 这里交换了被格式化的参数与位置参数的索引位置.
    let s = format!("Hello {1:0$}!", 5, 'x');
    assert_eq!(s, expected);

    // 使用了具名参数作为宽度值
    let s = format!("Hello {:width$}!", 'x', width = 5);
    assert_eq!(s, expected);

    let width: usize = 5;
    // 使用了具名参数作为宽度值
    let s = format!("Hello {:width$}!", 'x');
    assert_eq!(s, expected);
}