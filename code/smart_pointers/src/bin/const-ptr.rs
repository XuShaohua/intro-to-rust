// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::ffi::c_void;
use std::ptr;

fn main() {
    let x: i32 = 42;
    // 指向基础数据类型 x 的原始指针
    let x_ptr: *const i32 = ptr::addr_of!(x);
    // 读取指针指向的内存所保存的值
    unsafe { assert_eq!(*x_ptr, 42); }
    // 另一种方式来读取
    unsafe { assert_eq!(x_ptr.read(), 42); }

    // 类型转换
    let void_ptr: *const c_void = x_ptr.cast();
    // 判断原始指针是否为空指针
    assert!(!void_ptr.is_null());

    let numbers = [1, 2, 3, 4, 5];
    // 指向数组中第一个元素的原始指针
    let first_num: *const i32 = numbers.as_ptr();
    // 访问数组中的第一个元素
    unsafe { assert_eq!(*first_num, 1); }
    // 访问数组中的第二个元素
    unsafe { assert_eq!(*first_num.add(1), 2) }
    // 访问数组中的第四个元素
    unsafe { assert_eq!(*first_num.offset(3), 4); }
    // 访问数组中的第五个元素
    unsafe { assert_eq!(*first_num.byte_offset((4 * size_of::<i32>()) as isize), 5) }
}