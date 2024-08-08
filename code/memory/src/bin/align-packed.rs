// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::mem::{offset_of, size_of};

#[allow(non_camel_case_types)]
#[repr(packed)]
pub struct linux_dirent_t {
    pub d_ino: u64,
    pub d_off: i64,
    pub d_reclen: u16,
    pub d_name: [u8; 1],
}

fn main() {
    assert_eq!(offset_of!(linux_dirent_t, d_name), 18);
    assert_eq!(size_of::<linux_dirent_t>(), 19);
}