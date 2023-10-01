// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(clippy::disallowed_names)]

struct Foo {
    x: (u32, u32),
    y: u32,
}

fn main() {
    let reference = &4;

    println!("Got a value {}", reference);
    println!("Got a value {}", *reference);

    let a = 3.2f32;
    println!("a: {}", a);
    let foo = Foo { x: (1, 2), y: 3 };
    let Foo { x: (a, b), y } = foo;
    println!("a: {}, b: {}, y: {}", a, b, y);
}
