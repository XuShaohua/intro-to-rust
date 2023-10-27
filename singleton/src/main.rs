// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#![deny(
    warnings,
    clippy::all,
    clippy::cargo,
    clippy::nursery,
    clippy::pedantic
)]

mod lazy;
mod president;

fn test_lazy() {
    use lazy::GLOBAL_PRESIDENT;

    GLOBAL_PRESIDENT.lock().unwrap().set_name("Trump");
    println!(
        "President name: {}",
        GLOBAL_PRESIDENT.lock().unwrap().name()
    );
}

fn main() {
    test_lazy();
}
