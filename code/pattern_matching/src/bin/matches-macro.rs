// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn is_slash(input: &str, pos: usize) -> bool {
    matches!(input.chars().nth(pos).unwrap(), '/' | '\\')
}

fn main() {
    assert!(!is_slash("Hello, world.", 0));
}
