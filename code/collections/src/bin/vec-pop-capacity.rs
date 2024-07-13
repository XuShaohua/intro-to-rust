// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let mut v1: Vec<i32> = Vec::new();
    for i in 0..10_000 {
        v1.push(i);
    }
    println!("capacity: {}, len: {}", v1.capacity(), v1.len());

    while v1.pop().is_some() {
        // Ignore
    }
    println!("capacity: {}, len: {}", v1.capacity(), v1.len());
    // 手动释放内存
    v1.shrink_to_fit();
    println!("shrink_to_fit(), capacity: {}, len: {}", v1.capacity(), v1.len());
}