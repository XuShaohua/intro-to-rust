// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]
fn returns_closure() -> Box<dyn Fn(i32) -> i32> {
    Box::new(|x| x * 2)
}

fn returns_closure2() -> impl Fn(i32) -> i32 {
    |x| x * 2
}

fn main() {
    let double2 = returns_closure2();
    println!("{}", double2(42));
}
