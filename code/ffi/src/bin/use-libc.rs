// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs::File;
use std::os::unix::io::AsRawFd;

extern "C" {
    fn close(fd: i32) -> i32;
}

fn main() {
    let file = File::open("/etc/passwd").unwrap();
    let fd = file.as_raw_fd();
    std::mem::forget(file);
    println!("fd: {}", fd);
    unsafe {
        close(fd);
    }
}
