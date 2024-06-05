// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    for i in 1..20 {
        if i % 15 == 0 {
            println!("factor of 15");
            continue;
        }

        if i % 5 == 0 {
            println!("factor of 5");
            continue;
        }

        if i % 3 == 0 {
            println!("factor of 3");
        }
    }
}
