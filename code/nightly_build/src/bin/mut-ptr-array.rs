// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![feature(array_ptr_get)]
#![feature(slice_ptr_get)]

use std::ptr;

fn main() {
    // 在栈上的整数数组
    let mut numbers: [i32; 5] = [1, 2, 3, 4, 5];

    // 指向数组的原始指针
    let num_ptr: *mut [i32; 5] = ptr::addr_of_mut!(numbers);
    assert!(!num_ptr.is_null());
    assert_eq!(size_of_val(&num_ptr), 8);
    unsafe {
        (*num_ptr)[0] = 2;
        (*num_ptr)[1] = 4;
    }

    // 得到 *mut [T] 原始指针
    let num_ptr_slice: *mut [i32] = ptr::addr_of_mut!(numbers);
    assert_eq!(size_of_val(&num_ptr_slice), 16);
    assert_eq!(num_ptr.as_mut_slice(), num_ptr_slice);
    assert_eq!(num_ptr.as_mut_ptr(), num_ptr_slice.as_mut_ptr());
    assert_eq!(num_ptr_slice.len(), 5);
    unsafe {
        (*num_ptr_slice)[2] = 6;
        (*num_ptr_slice)[3] = 8;
    }

    let num_slice: &mut [i32] = &mut numbers;
    assert_eq!(num_slice.len(), 5);
    num_slice[4] = 10;

    // 从 *mut [T] 转换成 &[T]
    let num_slice2: &mut [i32] = unsafe {
        &mut *num_ptr_slice
    };
    // 这两个切片是完全相同的
    assert!(ptr::eq(num_slice, num_slice2));

    assert_eq!(numbers, [2, 4, 6, 8, 10]);

    // 指向数组中第一个元素的原始指针
    let num_first_ptr: *mut i32 = numbers.as_mut_ptr();
    // 另一种方法, 得到指向数组中第一个元素的原始指针
    let num_first_ptr2: *mut i32 = num_ptr_slice.cast();
    // 这两个原始指针指向同一个内存地址
    assert!(ptr::addr_eq(num_first_ptr, num_first_ptr2));
    unsafe { assert_eq!(*num_first_ptr, 2); }
}