// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem::size_of_val;

fn main() {
    // 整数数组
    let numbers: [i32; 5] = [1, 2, 3, 4, 5];
    assert_eq!(size_of_val(&numbers), 20);

    // 数组的引用
    let numbers_ref: &[i32; 5] = &numbers;
    assert_eq!(size_of_val(numbers_ref), 20);

    // 切片引用, 该切片指向数组中的第 3 个元素, 切片长度为 3
    let slice_ref: &[i32] = &numbers[2..];
    assert_eq!(size_of_val(slice_ref), 12);
    assert_eq!(slice_ref.len(), 3);
}