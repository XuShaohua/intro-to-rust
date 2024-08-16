// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::atomic::{AtomicBool, AtomicI32, Ordering};
use std::thread;

use atomic_internals::backoff::Backoff;

static DATA: AtomicI32 = AtomicI32::new(0);
static READY: AtomicBool = AtomicBool::new(false);

fn main() {
    thread::spawn(|| {
        DATA.store(42, Ordering::Relaxed);
        READY.store(true, Ordering::Release);
    });

    let backoff = Backoff::new();
    while !READY.load(Ordering::Acquire) {
        // linear spin
        //std::hint::spin_loop();
        // exponential spin
        backoff.snooze();
        print!("_");
    }
    println!("DONE");
    println!("data: {}", DATA.load(Ordering::Relaxed));
}
