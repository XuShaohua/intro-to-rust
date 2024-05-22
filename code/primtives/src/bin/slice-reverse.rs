// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut nums = vec![1, 2, 3, 5, 8];
    nums.reverse();
    assert_eq!(nums, [8, 5, 3, 2, 1]);
}