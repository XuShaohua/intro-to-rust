// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut count = 0;
    loop {
        count += 1;

        if count == 3 {
            println!("three");
        }

        if count == 5 {
            println!("five");
            break;
        }
    }
}
