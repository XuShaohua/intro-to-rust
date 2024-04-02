// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::collections::VecDeque;

fn main() {
    let v1 = VecDeque::<i32>::from([1, 2, 3, 4, 5]);
    println!("len of v1: {}, cap of v1: {}", v1.len(), v1.capacity());

    let mut v2 = VecDeque::<i32>::new();
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push_back(1);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push_back(2);
    v2.push_back(3);
    v2.push_back(4);
    v2.push_back(5);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    for i in 0..10 {
        v2.push_back(i);
    }
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push_back(1);
    v2.push_back(2);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.shrink_to_fit();
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
    v2.push_back(3);
    println!("len of v2: {}, cap of v2: {}", v2.len(), v2.capacity());
}
