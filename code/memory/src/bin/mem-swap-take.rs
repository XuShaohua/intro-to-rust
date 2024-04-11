// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

fn mem_replace() {
    let mut v = [Box::new(2), Box::new(3), Box::new(4)];

    let ret = mem::replace(&mut v[1], Box::new(42));
    assert_eq!(*ret, 3);
    assert_eq!(*v[1], 42);

    let mut v1 = vec![1, 2, 3];
    let mut v2 = vec![4, 5];
    (v1, v2) = (v2, v1);
    v2 = mem::replace(&mut v1, v2);
    assert_eq!(v2, vec![4, 5]);
}

fn mem_swap() {
    let mut x = [1, 2, 3];
    let mut y = [4, 5];

    mem::swap(&mut x[0], &mut y[0]);
    assert_eq!(x, [4, 2, 3]);
    assert_eq!(y, [1, 5]);
}

#[derive(Debug, Default)]
struct Point {
    x: f32,
    y: f32,
}

fn mem_take() {
    let mut p = Point { x: 3.0, y: 4.0 };
    let old_p = mem::take(&mut p);
    assert_eq!(old_p.x, 3.0);
    assert_eq!(p.x, 0.0);
    assert_eq!(p.y, 0.0);
}

fn main() {
    mem_replace();
    mem_swap();
    mem_take();
}
