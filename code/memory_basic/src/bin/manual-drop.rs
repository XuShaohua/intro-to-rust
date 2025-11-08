// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::time::{SystemTime, UNIX_EPOCH};

fn main() {
    let now = SystemTime::now();
    let timestamp = now.duration_since(UNIX_EPOCH).unwrap_or_default();
    let x: Box<i32>;

    if timestamp.as_millis().is_multiple_of(2) {
        x = Box::new(42);
        println!("x: {x}");
        drop(x);
    }
}
