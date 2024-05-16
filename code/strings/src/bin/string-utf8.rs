// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let s: String = "hello, world. 你好, 世界.".to_owned();
    let chars: Vec<char> = s.chars().collect();
    assert_eq!(s.len(), 29);
    assert_eq!(s.as_bytes().len(), 29);
    assert_eq!(s.as_str().len(), 29);
    assert_eq!(chars.len(), 21);
    println!("s: {s}");
}
