// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn str_literals() {
    let msg = "Hello, World.";
    assert_eq!(msg.len(), 13);

    let non_ascii = "你好, 世界";
    for c in non_ascii.chars() {
        print!("{:04x}:", c as u32);
    }
    println!();
}

// ASCII string
fn byte_strings() {
    let method = b"GET";
    assert_eq!(method.len(), 3);
    let raw_bytes = br#"hello, "NAME"!"#;
    assert_eq!(raw_bytes.len(), 14);
}

fn main() {
    str_literals();
    byte_strings();
}
