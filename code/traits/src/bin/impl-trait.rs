// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

mod static_dispatch_input;

fn double_positive(numbers: &[i32]) -> impl Iterator<Item=i32> + '_ {
    numbers.iter().filter(|x| x > &&0).map(|x| x + 2)
}

fn combine_vecs(u: Vec<i32>, v: Vec<i32>) -> impl Iterator<Item=i32> {
    v.into_iter().chain(u).cycle()
}

fn make_adder_function(y: i32) -> impl Fn(i32) -> i32 {
    move |x: i32| x + y
}

fn main() {}
