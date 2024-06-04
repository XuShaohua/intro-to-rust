// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(unreachable_code)]
#![allow(unused_braces)]

#[rustfmt::skip]
fn return1() {
    if (return { println!("1") } ) {
    }
}

#[rustfmt::skip]
fn return1_expanded() {
    if (return println!("1")) {
    }
}

fn return1_simplified() {
    println!("1")
}

#[rustfmt::skip]
fn return2() {
    if return { println!("2") } {
    }
}

#[rustfmt::skip]
fn return2_expanded() {
    if return println!("2") {
    }
}

fn return3() {
    if (return {
        println!("3");
    }) {}
}

fn main() {
    return1();
    return1_expanded();
    return1_simplified();
    return2();
    return2_expanded();
    return3();
}
