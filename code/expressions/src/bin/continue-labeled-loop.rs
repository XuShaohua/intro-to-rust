// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut sum = 0;

    'outer:
    for i in 0..100 {
        for j in 0..i {
            sum += j;
            if i * j > 200 {
                continue 'outer;
            }
        }
    }
    assert_eq!(sum, 2087);
}