// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::cell::Cell;
use std::thread;

// 初始化为 1.
thread_local!(static TLS_COUNTER: Cell<i32> = const { Cell::new(1) });

// 全局变量, 该变量位于 data segment.
static mut SHARED_COUNTER: i32 = 1;

fn main() {
    // 设置主线程的 TLS_COUNTER 实例的值为 2.
    TLS_COUNTER.set(2);

    let t1 = thread::spawn(move || {
        // 线程启动时, TLS_COUNTER 的值是 1.
        assert_eq!(TLS_COUNTER.get(), 1);
        // 修改线程内部的 TLS_COUNTER 实例.
        TLS_COUNTER.set(3);
    });
    TLS_COUNTER.set(4);
    t1.join().unwrap();
    // 读取主线程中的 TLS_COUNTER 实例.
    assert_eq!(TLS_COUNTER.get(), 4);

    // 没有任何保护手段的情况下, 直接访问全局变量.
    unsafe { SHARED_COUNTER = 2; }
    let t2 = thread::spawn(|| {
        unsafe {
            // 可能发生 data race
            SHARED_COUNTER = 3;
        }
    });
    // 可能发生 data race
    unsafe { SHARED_COUNTER = 4; }
    t2.join().unwrap();

    // 无法确定 SHARED_COUNTER 的值
    unsafe { assert!(SHARED_COUNTER == 3 || SHARED_COUNTER == 4); }

    let _x = 11;
}