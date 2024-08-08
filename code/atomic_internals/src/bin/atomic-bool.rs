// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::hint;
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;
use std::thread;
use std::time::Duration;

fn do_some_work() {
    thread::sleep(Duration::from_secs(3));
    println!("[worker] work done!");
}

fn main() {
    let live = Arc::new(AtomicBool::new(false));

    let bg_work = {
        let live_clone = live.clone();
        thread::spawn(move || {
            do_some_work();
            live_clone.store(true, Ordering::Release);
        })
    };

    while !live.load(Ordering::Acquire) {
        hint::spin_loop();
    }

    bg_work.join().expect("Failed to start bg work");
    println!("[main] bg work finished");
}
