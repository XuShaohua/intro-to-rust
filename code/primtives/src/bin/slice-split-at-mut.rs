// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut nums = [1, 2, 3, 5, 3, 2, 1];
    let (left, right) = nums.split_at_mut(4);
    assert_eq!(left, [1, 2, 3, 5]);
    assert_eq!(right, [3, 2, 1]);
    for num in right.iter_mut() {
        *num *= 2;
    }
    assert_eq!(nums, [1, 2, 3, 5, 6, 4, 2]);
}