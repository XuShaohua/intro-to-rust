// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::{mem, ptr};

fn main() {
    let numbers = [1, 1, 2, 3, 5, 8];
    let len: usize = numbers.len();
    let num_ptr: *const i32 = numbers.as_ptr();
    let num_raw_ref: *const [i32] = ptr::slice_from_raw_parts(num_ptr, len);
    let num_ref: &[i32] = unsafe {
        &*num_raw_ref
    };
    assert_eq!(num_ref, [1, 1, 2, 3, 5, 8]);

    let num_ref2: &[i32] = unsafe { mem::transmute::<(*const i32, usize), &[i32]>((num_ptr, len)) };
    assert_eq!(num_ref, num_ref2);
}