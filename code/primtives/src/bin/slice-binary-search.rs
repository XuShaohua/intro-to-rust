// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    // 整数的排序和查找
    let nums = &mut [1_i32, 2, 0, 3, 9, 7, 16, 8, 9];
    nums.sort_unstable();
    assert_eq!(nums, &[0_i32, 1, 2, 3, 7, 8, 9, 9, 16]);
    assert_eq!(nums.binary_search(&8), Ok(5));

    // 浮点数的排序和查找
    let mut floats = vec![1.2_f32, 2.8, 3.6, 0.7, 4.5, 9.2];
    floats.sort_by(f32::total_cmp);
    assert_eq!(floats, &[0.7_f32, 1.2, 2.8, 3.6, 4.5, 9.2]);
    assert_eq!(floats.binary_search_by(|num| num.total_cmp(&2.8)), Ok(2));
}