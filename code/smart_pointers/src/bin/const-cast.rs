// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let x = 42;
    let x_ptr = &x as *const i32;
    x_ptr.cast_mut();
    let x_mut_ptr = &x as *const i32 as *mut i32;
    unsafe {
        x_mut_ptr.write(43);
    }
    assert_eq!(x, 43);
}