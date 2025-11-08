// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    let result: i32 = 'block: {
        if args.len().is_multiple_of(3) && !args.len().is_multiple_of(5) {
            break 'block 1;
        }
        if !args.len().is_multiple_of(3) && args.len().is_multiple_of(5) {
            break 'block 2;
        }
        3
    };

    assert_eq!(result, 3);
}
