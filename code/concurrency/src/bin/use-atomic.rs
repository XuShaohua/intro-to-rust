// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::atomic::{AtomicBool, AtomicPtr, Ordering};

fn test_bool() {
    let mut some_bool = AtomicBool::new(true);
    assert!(*some_bool.get_mut());
    *some_bool.get_mut() = false;
    assert!(!some_bool.load(Ordering::SeqCst));

    assert!(!some_bool.swap(true, Ordering::Relaxed));
    //assert_eq!(some_bool.load(Ordering::Relaxed), false);
}

fn test_ptr() {
    let ptr = &mut 5;
    let atomic_ptr = AtomicPtr::new(ptr);
    println!("atomic_ptr: {:?}", atomic_ptr);
    unsafe {
        println!("inner: {}", *atomic_ptr.into_inner());
    }

    let atomic_ptr = AtomicPtr::new(ptr);
    let value = atomic_ptr.load(Ordering::SeqCst);
    println!("value: {:?}", value);
}

fn main() {
    test_bool();
    test_ptr();
}
