// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    // x 初始始化
    let mut x = Box::new(42_i32);
    // 创建可变更引用
    let y = &mut x;
    // x 被重新赋值, 旧的值自动被 drop
    *y = Box::new(41);

    // x 的作用域到此结束, drop 它
}