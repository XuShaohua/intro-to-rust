// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

#[derive(Debug)]
struct Matrix(f32, f32, f32, f32);

fn main() {
    let long_tuple = (1u8, 2u16, 3u32, 4u64);
    println!("last value of tuple: {}", long_tuple.3);

    let matrix = Matrix(1.1, 1.2, 2.1, 2.2);
    println!("Matrix: {matrix:?}");
}
