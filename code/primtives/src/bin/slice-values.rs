// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let nums: Vec<i32> = vec![1, 1, 2, 3, 5, 8];
    let part: &[i32] = &nums[1..3];
    println!("part: {part:?}");
    assert_eq!(part, &[1, 2]);
}