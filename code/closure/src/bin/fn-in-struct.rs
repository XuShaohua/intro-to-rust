// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Clone)]
struct A {
    b: fn() -> bool,
}

fn main() {
    let a = A { b: || true };
    println!("{}", (a.b)());
}
