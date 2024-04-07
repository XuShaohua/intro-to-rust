// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ptr;

fn main() {
    let src = b"hello";
    let mut dst = b"world".to_vec();

    unsafe {
        ptr::copy(
            ptr::from_ref(&src[0]),
            ptr::from_mut(&mut dst[0]),
            src.len(),
        );
    }
    assert_eq!(dst, src);

    unsafe {
        ptr::copy_nonoverlapping(ptr::from_ref(&src[0]), ptr::from_mut(&mut dst[4]), 1);
    }
    assert_eq!(dst[4], b'h');
}
