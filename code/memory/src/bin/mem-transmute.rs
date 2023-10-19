// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use core::mem::transmute;

#[derive(Debug, Default, Clone)]
#[repr(C)]
pub struct timespec_t {
    pub secs: u32,
    pub nano_secs: u32,
}

fn print_time(time_ref: Option<&timespec_t>) {
    let time_ptr = unsafe { transmute::<Option<_>, &timespec_t>(time_ref) as *const timespec_t };
    let time_ptr = time_ptr as usize;
    println!("time ptr: {time_ptr}");
}

fn main() {
    let time = Some(&timespec_t {
        secs: 3,
        nano_secs: 14,
    });

    println!("time: {time:?}");

    print_time(time);
    let time2 = None;
    print_time(time2);
}
