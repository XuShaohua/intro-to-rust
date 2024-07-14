// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let mut v1: Vec<i32> = Vec::new();
    v1.resize(42, 1);
    println!("len: {}, cap: {}", v1.len(), v1.capacity());
    v1.resize(52, 2);
    println!("len: {}, cap: {}", v1.len(), v1.capacity());
    v1.resize(32, 2);
    println!("len: {}, cap: {}", v1.len(), v1.capacity());
}