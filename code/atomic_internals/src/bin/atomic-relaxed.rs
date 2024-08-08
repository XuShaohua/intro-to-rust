// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::atomic::{AtomicUsize, Ordering};
use std::thread;

fn main() {
    const NUM_THREADS: usize = 10000;
    let counter = AtomicUsize::new(0);
    thread::scope(|s| {
        for _i in 0..NUM_THREADS {
            s.spawn(|| {
                counter.fetch_add(1, Ordering::Relaxed);
                // let c = counter.load(Ordering::Relaxed);
                // counter.store(c + 1, Ordering::Relaxed);
            });
        }
    });
    let value = counter.load(Ordering::Relaxed);
    println!("counter: {value}");
    assert_eq!(value, NUM_THREADS);
}