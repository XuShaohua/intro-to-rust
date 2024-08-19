// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(non_camel_case_types)]

use std::ffi::c_void;

#[repr(C)]
pub union literals_t {
    pub v_u8: u8,
    pub v_u16: u16,
    pub v_u32: u32,
    pub v_u64: u64,
    pub v_char: char,
    pub v_ptr: *const c_void,
}

fn main() {
    assert_eq!(size_of::<literals_t>(), 8);

    // 初始化时, 不是 unsafe的, 这里只写入其中 1 个字节, 其它 7 个字节位未初始化.
    let value = literals_t { v_u8: 42 };

    // 访问成员的值是, 是 unsafe
    unsafe { assert_eq!(value.v_u8, 42); }

    let v_u64 =
        unsafe {
            value.v_u64
        };
    let least_byte = (v_u64 & 0xff) as u8;
    assert_eq!(least_byte, 42);

    // 访问其它字节, 是未定义行为, 因为它们都没有被初始化.
    let _most_byte = (v_u64 >> 24) as u8;
}