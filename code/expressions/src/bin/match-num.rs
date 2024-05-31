// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::env;

fn main() {
    let num = env::args().len();
    let accum = match num {
        1 => 100,
        2 => 200,
        3 => 300,
        _ => 0,
    };
    assert_eq!(accum, 100);
}
