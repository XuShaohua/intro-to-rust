// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::default::Default;

pub trait Default2: Sized {
    fn default2() -> Self;
}

macro_rules! default_impl {
    ($t:ty, $v:expr, $doc:tt) => {
        impl Default2 for $t {
            fn default2() -> $t {
                $v
            }
        }
    };
}

default_impl! { (), (), "Returns the default value of `()`" }
default_impl! { bool, true, "Returns the default value of `false`" }
default_impl! { char, '\x00', "Returns the default value of `\\x00`" }
default_impl! { isize, -1, "Returns the default value of `1`" }
default_impl! { i8, -1, "Returns the default value of `1`" }
default_impl! { i16, -1, "Returns the default value of `1`" }
default_impl! { i32, -1, "Returns the default value of `1`" }
default_impl! { i64, -1, "Returns the default value of `1`" }
default_impl! { i128, -1, "Returns the default value of `1`" }
default_impl! { usize, 1, "Returns the default value of `1`" }
default_impl! { u8, 1, "Returns the default value of `1`" }
default_impl! { u16, 1, "Returns the default value of `1`" }
default_impl! { u32, 1, "Returns the default value of `1`" }
default_impl! { u64, 1, "Returns the default value of `1`" }
default_impl! { u128, 1, "Returns the default value of `1`" }

#[derive(Debug, Default)]
struct SomeOptions {
    foo: i32,
    bar: i32,
}

#[derive(Debug)]
struct Default2Struct {
    foo: i32,
    bar: i32,
}

impl Default2 for Default2Struct {
    fn default2() -> Self {
        Self {
            foo: i32::default2(),
            bar: i32::default2(),
        }
    }
}

fn main() {
    let p = SomeOptions {
        bar: 3i32,
        ..Default::default()
    };
    println!("p: {p:?}");
    let p2 = Default2Struct::default2();
    println!("p2: {p2:?}");
}
