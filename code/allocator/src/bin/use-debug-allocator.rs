// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use allocator::simple_alloc::DebugAllocator;

#[global_allocator]
static GLOBAL: DebugAllocator = DebugAllocator;

fn main() {
    let x = Box::new(42);
    println!("x: {x:?}");

    let nums = vec![1, 1, 2, 3, 5];
    println!("nums: {nums:?}");
}
