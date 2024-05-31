// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let x: i32 = if cfg!(target_os = "linux") {
        42
    } else {
        43
    };
    assert_eq!(x, 42);
}