// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::thread;

fn main() {
    let builder = thread::Builder::new()
        .name("new-process".to_owned())
        .stack_size(32 * 1024);
    let handler = builder
        .spawn(|| {
            // thread code goes here.
            println!("From worker thread");
        })
        .unwrap();
    handler.join().unwrap();
}
