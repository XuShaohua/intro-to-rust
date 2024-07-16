// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![feature(coroutines, coroutine_trait, stmt_expr_attributes)]

use std::ops::{Coroutine, CoroutineState};
use std::pin::Pin;
use std::thread;
use std::time::Duration;

fn test_fibonacci() {
    let mut fibonacci = #[coroutine] |n: i32| -> i32 {
        let mut a = 1;
        let mut b = 0;
        while a < n {
            (a, b) = (a + b, a);
            yield b;
        }

        a
    };

    loop {
        match Pin::new(&mut fibonacci).resume(12) {
            CoroutineState::Yielded(num) => println!("num: {num}"),
            CoroutineState::Complete(result) => {
                println!("fib(12) = {result}");
                break;
            }
        }
    }
}

fn test_factors() {
    let mut fact = #[coroutine] |n: i32| -> i32 {
        let mut prod = 1;
        for i in 1..=n {
            yield prod;
            prod *= i;
        }
        prod
    };

    loop {
        match Pin::new(&mut fact).resume(10) {
            CoroutineState::Yielded(num) => println!("num: {num}"),
            CoroutineState::Complete(result) => {
                println!("10! = {result}");
                break;
            }
        }
    }
}

fn test_crawler() {
    const URLS: [&str; 3] = [
        "https://rust-lang.org",
        "https://bing.com",
        "https://debian.org",
    ];
    let mut url_gen = #[coroutine] || {
        for url in URLS {
            yield url.to_owned();
        }
        ""
    };

    loop {
        match Pin::new(&mut url_gen).resume(()) {
            CoroutineState::Yielded(url) => {
                println!("Start downloading url: {url}");
                thread::sleep(Duration::from_secs(1));
            }
            CoroutineState::Complete(_) => println!("All urls are downloaded"),
        }
    }
}

fn main() {
    test_fibonacci();
    test_factors();
    test_crawler();
}