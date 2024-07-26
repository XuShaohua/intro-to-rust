// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::RwLock;
use std::thread;
use std::time::Duration;

fn main() {
    let x = RwLock::new(42_i32);
    thread::scope(|s| {
        s.spawn(|| {
            for _i in 0..10 {
                if let Ok(mut guard) = x.write() {
                    *guard += 1;
                }
                thread::sleep(Duration::from_secs(1));
            }
        });
        for _i in 0..3 {
            s.spawn(|| {
                for _j in 0..10 {
                    if let Ok(guard) = x.read() {
                        println!("[worker] x: {}", *guard);
                    }
                    thread::sleep(Duration::from_secs(1));
                }
            });
        }
    });

    if let Ok(result) = x.into_inner() {
        println!("[main] result: {result}");
        assert_eq!(result, 52);
    }
}