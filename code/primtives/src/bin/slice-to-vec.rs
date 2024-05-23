// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let nums = &mut [1, 2, 3, 5, 8];
    let single: Vec<i32> = nums.to_vec();
    assert_eq!(single, [1, 2, 3, 5, 8]);

    let duplex: Vec<i32> = nums.repeat(2);
    assert_eq!(duplex, [1, 2, 3, 5, 8, 1, 2, 3, 5, 8]);
}