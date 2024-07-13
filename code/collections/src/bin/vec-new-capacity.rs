// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let numbers = Vec::<i32>::new();
    assert_eq!(numbers.len(), 0);
    assert_eq!(numbers.capacity(), 0);
}