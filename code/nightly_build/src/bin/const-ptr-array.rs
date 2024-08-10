// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![feature(array_ptr_get)]
#![feature(slice_ptr_get)]

use std::ptr;

fn main() {
    // 在栈上的整数数组
    let numbers: [i32; 5] = [1, 1, 2, 3, 5];

    // 指向数组的原始指针
    let num_ptr: *const [i32; 5] = &numbers as *const [i32; 5];
    assert!(!num_ptr.is_null());
    assert_eq!(size_of_val(&num_ptr), 8);

    // 得到 *const [T] 原始指针
    let num_ptr_slice: *const [i32] = &numbers as *const [i32];
    assert_eq!(size_of_val(&num_ptr_slice), 16);
    assert_eq!(num_ptr.as_slice(), num_ptr_slice);
    assert_eq!(num_ptr.as_ptr(), num_ptr_slice.as_ptr());
    assert_eq!(num_ptr_slice.len(), 5);
    let num_slice: &[i32] = &numbers;
    assert_eq!(num_slice.len(), 5);

    // 从 *const [T] 转换成 &[T]
    let num_slice2: &[i32] = unsafe {
        &*num_ptr_slice
    };
    // 这两个切片是完全相同的
    assert!(ptr::eq(num_slice, num_slice2));

    // 指向数组中第一个元素的原始指针
    let num_first_ptr: *const i32 = numbers.as_ptr();
    // 另一种方法, 得到指向数组中第一个元素的原始指针
    let num_first_ptr2: *const i32 = num_ptr_slice.cast();
    // 这两个原始指针指向同一个内存地址
    assert!(ptr::addr_eq(num_first_ptr, num_first_ptr2));
}