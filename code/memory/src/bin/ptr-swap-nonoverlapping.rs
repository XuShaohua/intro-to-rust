// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ptr;

fn main() {
    let mut src = b"r".to_vec();
    let mut dst = b"bust".to_vec();
    unsafe {
        //ptr::swap_nonoverlapping(ptr::from_mut(&mut src[0]), ptr::from_mut(&mut dst[0]), 1);
        ptr::swap_nonoverlapping(&mut src[0], &mut dst[0], 1);
    }
    assert_eq!(src, b"b");
    assert_eq!(dst, b"rust");
}
