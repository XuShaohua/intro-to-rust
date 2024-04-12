// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::{Arc, Barrier};
use std::thread;

fn main() {
    const N: usize = 10;
    let mut handles = Vec::with_capacity(N);
    let barrier = Arc::new(Barrier::new(N));
    for i in 0..N {
        let c = Arc::clone(&barrier);
        let handle = thread::spawn(move || {
            println!("Before wait: {i}");
            c.wait();
            println!("After wait: {i}");
        });
        handles.push(handle);
    }
    for handle in handles {
        handle.join().unwrap();
    }
}
