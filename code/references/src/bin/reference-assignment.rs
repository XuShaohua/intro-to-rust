// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut x = 42;
    let mut y = 3;
    let mut r = &mut x;
    *r += 1;
    assert_eq!(*r, 43);

    if y == 3 {
        r = &mut y;
        *r += 1;
    }
    *r += 1;
    assert!(y == 5);

    x = 5;
    let rx = &x;
    let ry = &y;
    let rrx = &rx;
    let rry = &ry;
    assert_eq!(rx, *rry);
    assert_eq!(rrx, rry);
    assert!(!std::ptr::eq(rx, ry));
}
