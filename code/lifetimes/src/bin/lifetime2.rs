// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

pub struct Number<'a> {
    num: &'a u8,
}

impl<'a> Number<'a> {
    pub fn new(num: &'a u8) -> Self {
        Self { num }
    }

    pub fn get_num(&self) -> &'a u8 {
        self.num
    }

    pub fn set_num(&mut self, new_num: &'a u8) {
        self.num = new_num;
    }
}

pub struct Decoder<'a, 'b, S, R> {
    schema: &'a S,
    reader: &'b R,
}

impl<'a, 'b, S, R> Decoder<'a, 'b, S, R> where 'a: 'b {}

fn main() {
    let a = 10;
    let num = Number::new(&a);
    println!("num: {:?}", num.get_num());

    let reader = Vec::<u8>::new();
    let schema = Vec::<u8>::new();
    let _decoder = Decoder {
        reader: &reader,
        schema: &schema,
    };
}
