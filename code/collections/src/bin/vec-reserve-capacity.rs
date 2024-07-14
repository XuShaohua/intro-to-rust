// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let mut v1 = vec![1, 2, 3];
    println!("len: {}, cap: {}", v1.len(), v1.capacity());
    v1.reserve(12);
    println!("len: {}, cap: {}", v1.len(), v1.capacity());
    v1.reserve(13);
    println!("len: {}, cap: {}", v1.len(), v1.capacity());
}