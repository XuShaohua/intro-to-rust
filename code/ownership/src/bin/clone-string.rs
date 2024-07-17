// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let s = "Rust".to_owned();
    let s2 = s.clone();
    assert_eq!(s, s2);
}