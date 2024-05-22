// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let s = [1, 1, 2, 3, 5, 8, 13];
    assert!(s.starts_with(&[1, 1]));
    assert!(s.ends_with(&[13]));
    assert!(s.contains(&5));
}