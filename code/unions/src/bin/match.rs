// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(non_camel_case_types)]
#![allow(clippy::module_name_repetitions)]
#![allow(dead_code)]

use std::ffi::c_void;

#[repr(C)]
#[derive(Clone, Copy)]
pub union epoll_data_t {
    pub ptr: *const c_void,
    pub fd: i32,
    pub v_u32: u32,
    pub v_u64: u64,
}

fn main() {
    let data = epoll_data_t { fd: 2 };
    unsafe {
        match data {
            epoll_data_t { fd: 2 } => println!("stdout fd"),
            epoll_data_t { v_u32: 42 } => println!("u32 is 42"),
            epoll_data_t { v_u64: 28 } => println!("u64 is 28"),
            epoll_data_t { ptr } => if ptr.is_null() {
                eprintln!("NULL ptr")
            } else {
                println!("ptr: {ptr:?}")
            },
        }
    }
}