// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::thread;

fn main() {
    let username: String = "Julia".to_owned();
    let handler = thread::spawn(move || {
        println!("[worker] Hello, {username:?}");
    });
    let _ = handler.join();
    println!("[main]");
}
