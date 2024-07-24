// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::thread;
use std::time::Duration;

fn main() {
    let h1 = thread::spawn(|| {
        println!("worker thread #1");
        thread::sleep(Duration::from_millis(100));
    });
    let h2 = thread::spawn(|| {
        println!("worker thread #2");
        thread::sleep(Duration::from_millis(100));
    });

    // 先等待工作线程完成并退出.
    h1.join().unwrap();
    h2.join().unwrap();
    println!("main thread exit now..");
    // 最后是主线程退出.
}
