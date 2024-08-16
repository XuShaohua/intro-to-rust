// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::atomic::{AtomicI32, Ordering};
use std::thread;
use std::time::Duration;

static X: AtomicI32 = AtomicI32::new(0);
static Y: AtomicI32 = AtomicI32::new(0);

fn a() {
    X.store(10, Ordering::Relaxed);
    Y.store(20, Ordering::Relaxed);
}

fn b() -> (i32, i32) {
    let y = Y.load(Ordering::Relaxed);
    let x = X.load(Ordering::Relaxed);
    (x, y)
}

fn reset() {
    X.store(0, Ordering::Relaxed);
    Y.store(0, Ordering::Relaxed);
}

fn main() {
    for i in 0..1000 {
        let handle1 = thread::spawn(a);
        let handle2 = thread::spawn(b);
        let pair = if i % 2 == 0 {
            let _ = handle1.join();
            handle2.join().unwrap()
        } else {
            let pair = handle2.join().unwrap();
            let _ = handle1.join();
            pair
        };
        reset();
        thread::sleep(Duration::from_millis(10));
        let mark = match pair {
            (10, 20) => "_",
            (0, 0) => "-",
            _ => panic!("Invalid pair"),
        };
        print!("{mark}");
        if i % 75 == 64 {
            println!();
        }
    }
    println!();
}
