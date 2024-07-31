// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::collections::VecDeque;
use std::sync::Mutex;
use std::thread;
use std::time::Duration;

fn main() {
    let queue = Mutex::new(VecDeque::<i64>::with_capacity(10));

    thread::scope(|s| {
        // 消费者线程
        let consumer = s.spawn(|| loop {
            let item = queue.lock().unwrap().pop_front();
            if let Some(item) = item {
                println!("[consumer] {item}");
            } else {
                thread::park();
            }
        });

        // producer thread
        let mut m: i64 = 1;
        let mut n: i64 = 1;
        for _i in 0.. {
            queue.lock().unwrap().push_back(n);
            consumer.thread().unpark();
            thread::sleep(Duration::from_secs(1));
            if let Some(tmp) = m.checked_add(n) {
                n = m;
                m = tmp;
            } else {
                m = 1;
                n = 1;
            }
        }
    });
}