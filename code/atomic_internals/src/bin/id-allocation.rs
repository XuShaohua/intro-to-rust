// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::atomic::{AtomicU32, Ordering};

pub fn allocate_id() -> u32 {
    static NEXT_ID: AtomicU32 = AtomicU32::new(0);
    let mut curr = NEXT_ID.load(Ordering::Relaxed);
    loop {
        assert!(curr < 1000, "too many IDs!");
        match NEXT_ID.compare_exchange(curr, curr + 1, Ordering::Relaxed, Ordering::Relaxed) {
            Ok(_) => return curr,
            Err(v) => curr = v,
        }
    }
}

pub fn allocate_id2() -> u32 {
    static NEXT_ID: AtomicU32 = AtomicU32::new(0);
    NEXT_ID
        .fetch_update(Ordering::Relaxed, Ordering::Relaxed, |curr| {
            if curr < 1000 {
                Some(curr + 1)
            } else {
                None
            }
        })
        .expect("too many IDs!")
}

fn main() {
    for _ in 0..1002 {
        let id = allocate_id2();
        println!("id: {id}");
    }
}
