// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut nums = vec!["3", "7", "6", "1", "9"];
    nums.sort_by_cached_key(|key| key.parse::<i32>().unwrap());
    assert_eq!(nums, ["1", "3", "6", "7", "9"]);
}