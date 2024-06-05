// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::io;

fn read_number() -> i32 {
    let mut line = String::new();
    if io::stdin().read_line(&mut line).is_err() {
        0
    } else {
        line.trim().parse::<i32>().unwrap_or_default()
    }
}

fn main() {
    println!("Guess number!");
    while read_number() != 42 {
        println!("Try again");
    }
    println!("You have got it!");
}