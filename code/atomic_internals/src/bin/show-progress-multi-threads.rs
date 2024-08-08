// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::atomic::{AtomicUsize, Ordering};
use std::thread;
use std::time::Duration;

fn main() {
    const MAX_PROGRESS: usize = 100;
    let progress = AtomicUsize::new(0);

    let main_thread = thread::current();

    thread::scope(|s| {
        for _ in 0..4 {
            s.spawn(|| {
                for _i in 0..25 {
                    progress.fetch_add(1, Ordering::Relaxed);
                    main_thread.unpark();
                    thread::sleep(Duration::from_millis(100));
                }
            });
        }

        let mut toast = [b' '; MAX_PROGRESS];
        loop {
            let pgr = progress.load(Ordering::Relaxed);
            if pgr == MAX_PROGRESS {
                break;
            }
            for byte in toast.iter_mut().take(pgr) {
                *byte = b'=';
            }
            let msg = std::str::from_utf8(&toast).unwrap();
            print!("\r{msg}");
            thread::park();
        }
        println!();
    });

    println!("DONE");
}