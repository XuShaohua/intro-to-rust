// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let nums = &mut [1_i32, 2, 3];
    for num in nums.iter_mut() {
        *num = (*num).pow(2);
    }
    assert_eq!(nums, &[1, 4, 9]);
}