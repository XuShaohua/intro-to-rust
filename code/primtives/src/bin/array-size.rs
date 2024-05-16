// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of_val;
use std::ptr;

fn main() {
    let local_start: i32 = 0x1234;
    let arr: [i32; 6] = [1, 1, 2, 3, 5, 8];
    let addr: *const [i32; 6] = ptr::addr_of!(arr);
    let arr_ref: &[i32] = arr.as_slice();
    let addr2: *const i32 = arr.as_ptr();
    let local_end: i32 = 0x5678;
    assert_eq!(size_of_val(&arr), 24);
    assert_eq!(addr as *const (), addr2 as *const ());
    assert_eq!(arr_ref.as_ptr(), addr2);
    assert!(local_start < local_end);
}
