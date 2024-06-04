// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(clippy::never_loop)]
#![allow(unreachable_code)]
#![allow(clippy::unused_unit)]

fn break1() {
    loop {
        if (break { println!("1") }) {
            let _ = 1;
        }
    }
}

fn break1_expanded() {
    loop {
        if (break {
            println!("1");
        }) {
            let _ = 1;
        }
    }
}

#[rustfmt::skip]
fn break2() {
    loop {
        if break { println!("2") }
        {
            let _ = 2;
        }
    }
}

fn break2_expanded() {
    loop {
        if break () {
            println!("2")
        }

        // Another unused block
        {
            let _ = 2;
        }
    }
}

fn main() {
    break1();
    break1_expanded();
    break2();
    break2_expanded();
}
