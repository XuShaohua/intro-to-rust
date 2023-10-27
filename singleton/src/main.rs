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

mod lazy_static_macro;
mod mutex_only;
mod once_cell_lazy;
mod president;

fn test_once_cell_lazy() {
    use once_cell_lazy::GLOBAL_PRESIDENT;

    GLOBAL_PRESIDENT
        .lock()
        .unwrap()
        .set_name("Trump[once_cell]");
    println!(
        "President name: {}",
        GLOBAL_PRESIDENT.lock().unwrap().name()
    );
}

fn test_lazy_static_macro() {
    use lazy_static_macro::GLOBAL_PRESIDENT;

    GLOBAL_PRESIDENT
        .lock()
        .unwrap()
        .set_name("Trump[lazy_static]");
    println!(
        "President name: {}",
        GLOBAL_PRESIDENT.lock().unwrap().name()
    );
}

fn test_mutex_only() {
    use mutex_only::GLOBAL_PRESIDENT;

    GLOBAL_PRESIDENT
        .lock()
        .unwrap()
        .set_name("Trump[mutex_only]");
    println!(
        "President name: {}",
        GLOBAL_PRESIDENT.lock().unwrap().name()
    );
}

fn main() {
    test_once_cell_lazy();
    test_lazy_static_macro();
    test_mutex_only();
}
