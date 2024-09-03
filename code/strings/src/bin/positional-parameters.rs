// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let s = format!("{} {} {}", 1, 2, 3);
    assert_eq!(s, "1 2 3");

    // `{}` 从 0 开始计数
    let s = format!("{1} {} {2}", 1, 2, 3);
    assert_eq!(s, "2 1 3");

    let s = format!("{1} {2} {0}", 1, 2, 3);
    assert_eq!(s, "2 3 1");
}