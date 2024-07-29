// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::collections::VecDeque;
use std::sync::{Condvar, Mutex};
use std::thread;
use std::time::Duration;

fn main() {
    let queue = Mutex::new(VecDeque::<i32>::with_capacity(10));
    let notify = Condvar::new();

    thread::scope(|s| {
        // 消费者线程
        s.spawn(|| loop {
            let mut queue_guard = queue.lock().unwrap();
            let item = loop {
                if let Some(item) = queue_guard.pop_front() {
                    break item;
                } else {
                    queue_guard = notify.wait(queue_guard).unwrap();
                }
            };
            drop(queue_guard);
            println!("[consumer] {item}");
        });

        // producer thread
        let mut m: i32 = 1;
        let mut n: i32 = 1;
        for _i in 0.. {
            println!("[producer] {n}");
            queue.lock().unwrap().push_back(n);
            // 随机唤醒一个等待的线程.
            notify.notify_one();
            // 等待一下, 再准备生产下一个.
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