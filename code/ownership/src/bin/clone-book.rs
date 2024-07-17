// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(dead_code)]

use std::mem::size_of;

#[derive(Debug, Clone)]
pub struct Book {
    title: String,
    isbn: u64,
    price: f64,
}

#[allow(clippy::inconsistent_digit_grouping)]
fn main() {
    assert_eq!(size_of::<Book>(), 4);

    let books = vec![
        Book {
            title: "Programming Rust".to_owned(),
            isbn: 978_1_492_05259_3,
            price: 69.99,
        },
        Book {
            title: "Rust Atomics and Locks".to_owned(),
            isbn: 978_1_098_11944_7,
            price: 59.99,
        },
    ];

    let mut books_sorted = books.clone();
    books_sorted.sort_by(|a, b| a.price.total_cmp(&b.price));

    println!("books sorted: {books_sorted:?}");
}