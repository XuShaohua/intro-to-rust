// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main_closure_add1(x: &mut i32) {
    *x += 1;
}

fn main() {
    let mut x = 0;

    main_closure_add1(&mut x);
    main_closure_add1(&mut x);
    println!("x: {x}");
    assert_eq!(x, 2);
}
