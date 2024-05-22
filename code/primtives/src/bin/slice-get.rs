// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let nums = [1, 1, 2, 3, 5, 8, 13];
    assert_eq!(nums.first(), Some(&1));
    assert_eq!(nums.last().copied(), Some(13));
    assert_eq!(nums.get(4), Some(&5));
}