// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ptr;

fn main() {
    let mut msg = ['b', 'u', 's', 't'];
    let c = unsafe { ptr::replace(&mut msg[0], 'r') };
    assert_eq!(msg[0], 'r');
    assert_eq!(c, 'b');

    let mut msg2 = ['b', 'u', 's', 't'];
    let mut c2 = 'r';
    unsafe {
        ptr::swap(&mut msg2[0], &mut c2);
    }
    assert_eq!(msg2[0], 'r');
    assert_eq!(c2, 'b');
}
