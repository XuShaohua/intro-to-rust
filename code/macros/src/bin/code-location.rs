// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    println!("Will print filename and line number");
    println!("module path: {}", module_path!());
    println!("pos: {}:{}+{}", file!(), line!(), column!());
}
