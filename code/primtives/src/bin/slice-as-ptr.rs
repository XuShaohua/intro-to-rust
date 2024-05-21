// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let nums = &mut [1, 2, 3];
    let nums_ptr = nums.as_mut_ptr();
    unsafe {
        for i in 0..nums.len() {
            // num = num ^ 2;
            *nums_ptr.add(i) = i32::pow(*nums_ptr.add(i), 2);
        }
    }
    assert_eq!(nums, &[1, 4, 9]);
}