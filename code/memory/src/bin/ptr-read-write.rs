// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ptr;

fn main() {
    let mut s = 42;

    unsafe {
        let s2 = &mut s as *mut i32;
        let num = ptr::read(s2);
        assert_eq!(num, 42);
        ptr::write(s2, num + 1);
    }

    assert_eq!(s, 43);
}
