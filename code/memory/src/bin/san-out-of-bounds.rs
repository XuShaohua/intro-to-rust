// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::ptr;

fn main() {
    // numbers 在堆内存上分配的空间只有 3 个字节.
    let mut numbers: Vec<u8> = vec![0, 1, 2];

    // 越界写入
    unsafe {
        let numbers_ptr = numbers.as_mut_ptr();
        // 向 numbers 的堆内存连续写入 4 个字节, 最后一个字节是越界的.
        ptr::write_bytes(numbers_ptr, 0xf1, 4);
    }

    // 越界读取
    let _off_last_byte: u8 = unsafe {
        // 从 numbers 的堆内存读取第 4 个字节
        *numbers.as_ptr().offset(4)
    };

    let mut numbers2: [i32; 3] = [0, 1, 2];
    unsafe {
        let numbers2_ptr = ptr::addr_of_mut!(numbers2);
        // 栈内存越界写入
        ptr::write_bytes(numbers2_ptr, 0x1f, 2);
    }
    assert_eq!(numbers2[0], 0x1f1f1f1f);
}