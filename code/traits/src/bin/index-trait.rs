// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::ops::{Index, IndexMut};

pub trait Index2<Idx: ?Sized> {
    type Output: ?Sized;

    fn index(&self, index: Idx) -> &Self::Output;
}

pub trait IndexMut2<Idx: ?Sized>: Index2<Idx> {
    fn index_mut(&mut self, index: Idx) -> &mut Self::Output;
}

#[derive(Debug)]
enum Side {
    Left,
    Right,
}

#[derive(Debug, PartialEq)]
enum Weight {
    Kilogram(f64),
    Pound(f64),
}

#[derive(Debug)]
struct Balance {
    pub left: Weight,
    pub right: Weight,
}

impl Index<Side> for Balance {
    type Output = Weight;

    fn index(&self, index: Side) -> &Self::Output {
        println!("index() {:?}", index);
        match index {
            Side::Left => &self.left,
            Side::Right => &self.right,
        }
    }
}

impl IndexMut<Side> for Balance {
    fn index_mut(&mut self, index: Side) -> &mut Self::Output {
        println!("index_mut() {:?}", index);
        match index {
            Side::Left => &mut self.left,
            Side::Right => &mut self.right,
        }
    }
}

fn main() {
    let mut b = Balance {
        left: Weight::Pound(1.24),
        right: Weight::Kilogram(2.5),
    };
    println!("b: {:?}", b);
    b[Side::Left] = Weight::Kilogram(2.21);
    println!("b: {:?}", b);
}
