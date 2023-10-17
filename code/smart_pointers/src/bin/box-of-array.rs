// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn array_iter() {
    const SIEVE_SIZE: usize = 10000;
    let mut sieve = [true; SIEVE_SIZE];
    for i in 2..100 {
        if sieve[i] {
            let mut j = i * i;
            while j < SIEVE_SIZE {
                sieve[j] = false;
                j += i;
            }
        }
    }

    assert!(sieve[211]);
    assert!(!sieve[9876]);
}

fn array_sort() {
    // Sort
    let mut chaos = [3, 5, 4, 1, 2];
    chaos.sort();
    assert_eq!(chaos, [1, 2, 3, 4, 5]);
}

fn box_array() {
    let arr = Box::new([1, 3, 2, 4, 5]);
    assert_eq!(arr.len(), 5);
}

fn main() {
    box_array();
    array_sort();
    array_iter();
}
