// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::Mutex;
use std::thread;

fn main() {
    let counter: Mutex<i32> = Mutex::new(42);
    let num_threads = 10;
    thread::scope(|s| {
        for _i in 0..num_threads {
            s.spawn(|| {
                if let Ok(mut guard) = counter.lock() {
                    *guard += 1;
                }
            });
        }
    });

    if let Ok(result) = counter.into_inner() {
        println!("counter is: {result}");
        assert_eq!(result, 52);
    }
}
