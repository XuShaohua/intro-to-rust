// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(unused_must_use)]

#[must_use = "`{Critial}` trait not used"]
trait Critial {}
impl Critial for i32 {}

fn give_critical() -> impl Critial {
    42i32
}

fn main() {
    let _ = give_critical();
    give_critical();
}
