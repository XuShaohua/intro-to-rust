// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::env;

fn with_if_else() {
    let num = env::args().len();
    let accum = if num == 1 {
        100
    } else if num == 2 {
        200
    } else if num == 3 {
        300
    } else if num == 4 {
        400
    } else if num == 5 {
        500
    } else if num == 6 {
        600
    } else {
        0
    };
    assert_eq!(accum, 100);
}

fn with_match_short() {
    let num = env::args().len();
    let accum = match num {
        1 => 100,
        2 => 200,
        3 => 300,
        _ => 0,
    };
    assert_eq!(accum, 100);
}

// 在 x86_64 (AMD Ryzen 5) 上超过 4 个分支后, 才会构造 jump table.
// 在 aarch64 (Rock 3A) 上面也可以发现, 当超过 4 个分支后, 会构造 jump table.
fn with_match_long() {
    let num = env::args().len();
    let accum = match num {
        1 => 100,
        2 => 200,
        3 => 300,
        4 => 400,
        _ => 0,
    };
    assert_eq!(accum, 100);
}

fn main() {
    with_if_else();
    with_match_short();
    with_match_long();
}
