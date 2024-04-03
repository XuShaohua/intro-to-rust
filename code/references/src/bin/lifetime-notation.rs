// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(clippy::disallowed_names)]

#[derive(Debug)]
struct Foo;

fn long_str<'a>(a: &'a str, b: &'a str) -> &'a str {
    if a.len() >= b.len() {
        a
    } else {
        b
    }
}

impl Foo {
    fn share(&self) {}
    fn mutate_and_share(&mut self) -> &Self {
        self
    }
}

fn main() {
    let mut foo = Foo;
    foo.share();
    let loan = foo.mutate_and_share();
    println!("loan: {:?}", loan);

    let a = "Hello ";
    let b = "world";
    let c = long_str(a, b);
    println!("c: {c}");
}
