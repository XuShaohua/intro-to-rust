// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let x = {
        let mut sum = 0;
        for i in 1..10 {
            sum += i;
        }
        sum
    };
    assert_eq!(x, 45);
}