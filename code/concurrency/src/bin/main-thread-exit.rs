// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::thread;
use std::time::Duration;

fn main() {
    let _h1 = thread::spawn(|| {
        println!("worker thread #1");
        thread::sleep(Duration::from_millis(100));
    });
    let _h2 = thread::spawn(|| {
        println!("worker thread #2");
        thread::sleep(Duration::from_millis(100));
    });

    println!("main thread exit now..");
    // 主线程退出后, 整个进程就退出了, 即使用工作线程还在工作.
}
