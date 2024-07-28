// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::io::{Read, stdin};

use allocator::mmap_allocator::MMapAllocator;

#[global_allocator]
static GLOBAL: MMapAllocator = MMapAllocator;

fn main() {
    let x = Box::new(42);
    println!("x: {x:?}");

    let nums = vec![1, 1, 2, 3, 5];
    println!("nums: {nums:?}");

    println!("Press any key to continue ...");
    let mut buf = [0; 4];
    let _ = stdin().read(&mut buf).unwrap();
}
