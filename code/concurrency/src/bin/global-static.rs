// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::thread;

static mut G_VAR: i32 = 5;

fn counter() -> i64 {
    static mut V: i64 = 0;
    unsafe {
        V += 1;
        V
    }
}

fn main() {
    let thread1 = thread::spawn(move || unsafe {
        println!("[thread1] read var: {}", G_VAR);
        G_VAR += 1;
    });
    thread1.join().unwrap();

    unsafe {
        println!("[main] read var: {}", G_VAR);
    }

    for _ in 0..10 {
        println!("counter: {}", counter());
    }
}
