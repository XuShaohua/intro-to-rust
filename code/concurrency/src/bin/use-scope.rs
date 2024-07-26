// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::thread;

fn main() {
    let numbers = [1, 2, 3, 5, 8];
    let mut sum: i32 = 0;
    let mut product: i32 = 0;
    let mut maximum: Option<i32> = None;

    // Worker threads.
    thread::scope(|s| {
        s.spawn(|| {
            sum = numbers.iter().sum();
        });
        s.spawn(|| {
            product = numbers.iter().product::<i32>();
        });
        s.spawn(|| {
            maximum = numbers.iter().max().copied();
        });
    });

    // Access the results.
    println!("sum of numbers: {sum}");
    println!("product of numbers: {product}");
    println!("maximum in numbers: {maximum:?}");
}