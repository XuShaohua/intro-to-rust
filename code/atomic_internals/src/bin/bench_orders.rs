// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::atomic::{AtomicI32, Ordering};
use std::thread;
use std::time::Duration;

struct Config {
    x_load: Ordering,
    x_store: Ordering,
    y_load: Ordering,
    y_store: Ordering,
    sleep: Duration,
    round: usize,
    line_width: usize,
}

static X: AtomicI32 = AtomicI32::new(0);
static Y: AtomicI32 = AtomicI32::new(0);

const CONFIG: Config = Config {
    x_load: Ordering::Relaxed,
    x_store: Ordering::Relaxed,
    y_load: Ordering::Relaxed,
    y_store: Ordering::Relaxed,
    sleep: Duration::from_millis(1),
    round: 100_000,
    line_width: 75,
};

#[allow(dead_code)]
const CONFIG_ACQUIRED: Config = Config {
    x_load: Ordering::Acquire,
    x_store: Ordering::Release,
    y_load: Ordering::Acquire,
    y_store: Ordering::Release,
    sleep: Duration::from_millis(1),
    round: 100_000,
    line_width: 75,
};

#[allow(dead_code)]
const CONFIG_SEQ: Config = Config {
    x_load: Ordering::SeqCst,
    x_store: Ordering::SeqCst,
    y_load: Ordering::SeqCst,
    y_store: Ordering::SeqCst,
    sleep: Duration::from_millis(1),
    round: 100_000,
    line_width: 75,
};

fn a() {
    X.store(10, CONFIG.x_store);
    Y.store(20, CONFIG.y_store);
}

fn b() -> (i32, i32) {
    let y = Y.load(CONFIG.y_load);
    let x = X.load(CONFIG.x_load);
    (x, y)
}

fn reset() {
    X.store(0, CONFIG.x_store);
    Y.store(0, CONFIG.y_store);
}

fn main() {
    for i in 0..CONFIG.round {
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
        thread::sleep(CONFIG.sleep);
        let mark = match pair {
            (10, 20) => "_",
            (0, 0) => "-",
            pair => panic!("Invalid pair, {pair:?}"),
        };
        print!("{mark}");
        if i % CONFIG.line_width == CONFIG.line_width - 1 {
            println!();
        }
    }
    println!();
}
