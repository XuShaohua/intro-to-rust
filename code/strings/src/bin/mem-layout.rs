// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let mut msg = String::from("Hello, Rust");
    msg.reserve(2);
    let lang = &msg[7..];
    assert_eq!(lang, "Rust");
    assert_eq!(msg.len(), 11);
    assert_eq!(msg.capacity(), 13);
    assert_eq!(lang.len(), 4);
}