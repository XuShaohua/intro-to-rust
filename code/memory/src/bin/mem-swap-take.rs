// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

#[allow(clippy::useless_vec)]
fn mem_replace() {
    let mut v = vec![Box::new(2), Box::new(3), Box::new(4)];

    let ret = mem::replace(&mut v[1], Box::new(42));
    assert_eq!(*ret, 3);
    assert_eq!(*v[1], 42);
}

fn mem_swap() {
    let mut x = 42;
    let mut y = 5;

    mem::swap(&mut x, &mut y);
    assert_eq!(x, 5);
    assert_eq!(y, 42);
}

fn mem_take() {
    let mut v = vec![42, 43];
    let old_v = mem::take(&mut v);
    assert!(v.is_empty());
    assert_eq!(old_v, [42, 43]);
}

fn main() {
    mem_replace();
    mem_swap();
    mem_take();
}
