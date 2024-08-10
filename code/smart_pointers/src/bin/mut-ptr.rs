// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::ptr;

fn main() {
    let mut x: i32 = 42;
    // 指向基础数据类型 x 的原始指针
    let x_ptr: *mut i32 = ptr::addr_of_mut!(x);
    // 修改指针指向的内存所保存的值
    unsafe { *x_ptr = 43; }
    // 读取数值
    unsafe { assert_eq!(x_ptr.read(), 43); }

    // 类型转换
    let i8_ptr: *mut i8 = x_ptr.cast();
    #[cfg(target_endian = "little")]
    unsafe {
        assert_eq!(*i8_ptr, 43);
    }
    #[cfg(target_endian = "big")]
    unsafe {
        assert_eq!(*i8_ptr.add(3), 43);
    }

    let mut numbers = [1, 2, 3, 4, 5];
    // 指向数组中第一个元素的原始指针
    let first_num: *mut i32 = numbers.as_mut_ptr();
    // 修改数组中的第一个元素
    unsafe { *first_num = 2; }
    // 修改数组中的第二个元素
    unsafe { *first_num.add(1) = 4; }
    // 修改数组中的第二个元素
    unsafe { *first_num.wrapping_add(2) = 6; }
    // 修改数组中的第四个元素
    unsafe { *first_num.offset(3) = 8; }
    // 修改数组中的第五个元素
    unsafe { *first_num.byte_offset((4 * size_of::<i32>()) as isize) = 10; }

    assert_eq!(numbers, [2, 4, 6, 8, 10]);
}