// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(non_camel_case_types)]

use std::mem::size_of;

#[repr(C)]
pub struct linux_dirent_c_t {
    pub d_ino: u64,
    pub d_off: i64,
    pub d_reclen: u16,
    pub d_name: [u8; 1],
}

fn main() {
    assert_eq!(size_of::<linux_dirent_c_t>(), 24);
}