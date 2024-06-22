// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut num = 1;
    while !(num % 3 == 0 && num % 5 == 0) {
        num += 1;
    }
    assert_eq!(num, 15);
}