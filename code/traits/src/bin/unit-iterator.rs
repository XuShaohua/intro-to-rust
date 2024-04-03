// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::io::{stdout, Write};

fn main() {
    let data = vec![1, 2, 3, 4, 5];
    let res: Result<(), _> = data.iter().map(|x| writeln!(stdout(), "{x}")).collect();
    println!("res: {:?}", res);
}
