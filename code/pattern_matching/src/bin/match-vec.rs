// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn vec_alt(vals: &[i32]) -> &'static str {
    match vals {
        [] => "empty",
        [1] => "only [1]",
        [_, 2] => "only [_, 2]",
        [_, _, 3] => "only [_, _, 3]",
        _ => "otherwise",
    }
}

fn main() {
    let v = vec![1, 2, 3];
    println!("{}", vec_alt(&v));
}
