// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(non_camel_case_types)]

use std::mem;

// rustc 决定内存布局
pub struct linux_dirent_t {
    pub d_ino: u64,
    pub d_off: u64,
    pub d_reclen: u16,
    pub d_type: u8,
    pub d_name: *mut u8,
}

// 使用 C ABI 兼容的内存布局
#[repr(C)]
pub struct linux_dirent_c_t {
    pub d_ino: u64,
    pub d_off: u64,
    pub d_reclen: u16,
    pub d_type: u8,
    pub d_name: *const u8,
}

// 为结构体添加 packed attribute, 忽略结构体内成员的内存对齐.
#[repr(packed)]
pub struct linux_dirent_packed_t {
    pub d_ino: u64,
    pub d_off: u64,
    pub d_reclen: u16,
    pub d_type: u8,
    pub d_name: *const u8,
}

fn main() {
    assert_eq!(mem::offset_of!(linux_dirent_t, d_name), 16);
    assert_eq!(mem::offset_of!(linux_dirent_c_t, d_name), 24);
    assert_eq!(mem::offset_of!(linux_dirent_packed_t, d_name), 19);
}