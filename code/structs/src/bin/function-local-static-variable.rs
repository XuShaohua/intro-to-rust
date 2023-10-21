// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::atomic::{AtomicUsize, Ordering};
use std::thread;
use std::time::Duration;

fn print_id() {
    static ID: AtomicUsize = AtomicUsize::new(1);
    let curr = thread::current();
    let thread_name = curr.name();
    for _i in 0..10 {
        let id = ID.fetch_add(1, Ordering::Relaxed);
        println!("id: {id}, thread: {thread_name:?}");
        thread::sleep(Duration::from_secs(1));
    }
}

fn main() {
    let handle1 = thread::Builder::new()
        .name("thread 1".into())
        .spawn(|| {
            print_id();
        })
        .unwrap();

    let handle2 = thread::Builder::new()
        .name("thread 2".into())
        .spawn(|| {
            print_id();
        })
        .unwrap();
    handle1.join().unwrap();
    handle2.join().unwrap();
}
