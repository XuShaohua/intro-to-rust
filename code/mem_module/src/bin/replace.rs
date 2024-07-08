// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

fn main() {
    let mut v = [Box::new(2), Box::new(3), Box::new(4)];

    let ret = mem::replace(&mut v[1], Box::new(42));
    assert_eq!(*ret, 3);
    assert_eq!(*v[1], 42);

    let mut v1 = vec![1, 2, 3];
    let mut v2 = vec![4, 5];
    // 使用语法糖
    (v1, v2) = (v2, v1);
    v2 = mem::replace(&mut v1, v2);
    assert_eq!(v2, vec![4, 5]);
}
