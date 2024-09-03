// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let x = 42;

    println!("八进制: 0o{:o}", x);
    println!("十进制: {}", x);
    println!("小写的十六进制: 0x{:x}", x);
    println!("大写的十六进制: 0x{:X}", x);
    println!("二进制: 0b{:b}", x);
    println!("x 的地址: {:p}", &x);

    let x2 = 1234567890;
    println!("小写的科学计数法: {:e}", x2);
    println!("大写的科学计数法: {:E}", x2);

    let s = "Hello, Rust";
    println!("Display: {}", s);
    println!("Debug: {:?}", s.as_bytes());
}