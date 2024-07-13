// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of;

fn main() {
    let mut v1 = Vec::<i32>::new();
    println!("len of v1: {}, cap: {}", v1.len(), v1.capacity());
    v1.push(1);
    println!("len of v1: {}, cap: {}", v1.len(), v1.capacity());
    v1.push(2);
    v1.push(3);
    v1.push(4);
    v1.push(5);
    println!("len of v1: {}, cap: {}", v1.len(), v1.capacity());

    let mut v2: Vec<i64> = Vec::new();
    println!(
        "len of v2: {}, cap: {}, size: {}",
        v2.len(),
        v2.capacity(),
        v2.capacity() * size_of::<i64>()
    );
    let mut old_cap = v2.capacity();
    for i in 0..10_000_000 {
        v2.push(i);
        if v2.capacity() != old_cap {
            old_cap = v2.capacity();
            println!(
                "len of v2: {}, cap: {}, size: {}",
                v2.len(),
                v2.capacity(),
                v2.capacity() * size_of::<i64>()
            );
        }
    }
}
