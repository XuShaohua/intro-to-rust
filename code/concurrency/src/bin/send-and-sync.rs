// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::{ptr, thread};

fn main() {
    let x = 42;
    let handle = thread::spawn(move || {
        assert_eq!(x, 42);
    });
    let _ = handle.join();
    assert_eq!(x, 42);

    let nums = [1, 2, 3];
    println!("[main] addr of nums: {:?}", ptr::addr_of!(nums));
    let handle = thread::spawn(move || {
        println!("[worker] addr of nums: {:?}", ptr::addr_of!(nums));
        assert_eq!(nums.len(), 3);
    });
    let _ = handle.join();
    assert_eq!(nums.len(), 3);
}