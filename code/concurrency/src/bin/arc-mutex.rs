// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::mpsc::channel;
use std::sync::{Arc, Mutex};
use std::thread;

struct Payload {
    count: usize,
    value: i128,
}

fn main() {
    const N: usize = 100;

    let payload = Arc::new(Mutex::new(Payload { count: 0, value: 1 }));

    let (tx, rx) = channel();

    for _ in 0..N {
        let (payload, tx) = (payload.clone(), tx.clone());
        thread::spawn(move || {
            let mut payload = payload.lock().unwrap();
            payload.value *= 2;
            payload.count += 1;
            if payload.count == N {
                tx.send(()).unwrap();
            }
        });
    }

    rx.recv().unwrap();
    println!("data: {:?}", payload.lock().unwrap().value);
}
