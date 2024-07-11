// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem;

fn main() {
    let msg = String::from("Hello, Rust");
    assert_eq!(msg.chars().count(), 11);
    // 创建 ManuallyDrop, 阻止 String::drop() 方法被调用.
    mem::forget(msg);

    let numbers = vec![1, 2, 3, 5, 8, 13];
    let slice = numbers.into_boxed_slice();
    // 转换成原始指针, 不会再调用 Vec<i32>::drop() 方法
    let _ptr: *mut [i32] = Box::leak(slice);
}