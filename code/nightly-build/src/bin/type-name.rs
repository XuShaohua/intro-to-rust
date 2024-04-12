// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![feature(core_intrinsics)]
#![allow(internal_features)]

fn type_of<T>(_: &T) -> &'static str {
    std::intrinsics::type_name::<T>()
}

fn main() {
    let x = 42;
    assert_eq!(type_of(&x), "i32");
}
