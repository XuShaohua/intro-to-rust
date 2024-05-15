// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

// See: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
fn main() {
    const MAX_NUM: usize = 10_000;
    const NUM_SQUARED: usize = 100;
    let mut primes: [bool; MAX_NUM] = [true; MAX_NUM];
    primes[0] = false;
    primes[1] = false;
    for i in 2..=NUM_SQUARED {
        if primes[i] {
            for j in ((i * i)..MAX_NUM).step_by(i) {
                primes[j] = false;
            }
        }
    }

    println!("primes <= {MAX_NUM}: [");
    let mut count: i32 = 0;
    for (index, is_prime) in primes.iter().enumerate() {
        if *is_prime {
            print!("{index}, ");
            count += 1;
        }
        if count == 10 {
            println!();
            count = 0;
        }
    }
    println!("]");
}
