// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

#[derive(Clone, Copy, Debug)]
pub struct Nil;

#[derive(Clone, Debug)]
pub struct Pair(Box<i32>, Box<i32>);

fn main() {
    let nil = Nil;
    let copied_nil = nil;

    println!("original: {:?}", nil);
    println!("copy: {:?}", copied_nil);

    let pair = Pair(Box::new(1), Box::new(2));
    println!("original: {:?}", pair);

    let copied_pair = pair.clone();
    println!("clone: {:?}", copied_pair);
}
