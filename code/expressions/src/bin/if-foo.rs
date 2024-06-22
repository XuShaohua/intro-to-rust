// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

#[derive(PartialEq)]
enum Foo {
    Bar,
    Baz,
    Qux(u32),
}

fn main() {
    let a = Foo::Bar;
    if a == Foo::Bar {
        println!("a is bar!");
    }
}