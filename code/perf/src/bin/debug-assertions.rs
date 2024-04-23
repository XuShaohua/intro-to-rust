// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[allow(unused_variables)]
fn main() {
    let keys = [1, 1, 2, 3, 5, 8, 13, 21];
    #[cfg(debug_assertions)]
    for i in 1..keys.len() {
        debug_assert!(keys[i - 1] <= keys[i]);
    }
}
