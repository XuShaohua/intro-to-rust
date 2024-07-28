// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::thread;

fn main() {
    let mut nums = vec![1, 2, 3];
    let handler = thread::spawn(move || {
        for num in nums.iter_mut() {
            *num *= 2;
        }
        assert_eq!(nums.len(), 3);
        nums
    });

    if let Ok(moved_nums) = handler.join() {
        assert_eq!(moved_nums.len(), 3);
    }
}
