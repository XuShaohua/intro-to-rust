// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(non_camel_case_types)]
#![allow(clippy::module_name_repetitions)]
#![allow(dead_code)]

use std::ffi::c_void;

pub type poll_t = u32;

#[repr(C)]
#[derive(Default, Clone, Copy)]
pub struct epoll_event_t {
    pub events: poll_t,
    pub data: epoll_data_t,
}

#[repr(C)]
#[derive(Clone, Copy)]
pub union epoll_data_t {
    pub ptr: *const c_void,
    pub fd: i32,
    pub v_u32: u32,
    pub v_u64: u64,
}

impl Default for epoll_data_t {
    fn default() -> Self {
        Self {
            v_u64: 0,
        }
    }
}

fn main() {
    assert_eq!(size_of::<epoll_data_t>(), size_of::<u64>());
}