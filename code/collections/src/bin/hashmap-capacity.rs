// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use std::collections::HashMap;

fn main() {
    let mut map = HashMap::new();
    println!("[init] map cap: {}, size: {}", map.capacity(), map.len());
    for i in 0..16 {
        map.insert(i, i * i);
        println!("[{i}]: map cap {}, size {}", map.capacity(), map.len());
    }
}
