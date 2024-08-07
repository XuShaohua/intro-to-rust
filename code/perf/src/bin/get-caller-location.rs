// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::panic::Location;

fn noop() {
    let caller = Location::caller();
    println!("caller is: {caller:?}");
    dbg!(caller);
}

fn main() {
    let _x = 42;
    noop();
}