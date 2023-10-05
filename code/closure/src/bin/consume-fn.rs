// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn call_with_one<F>(f: F) -> usize
where
    F: Fn(usize) -> usize,
{
    f(1)
}

fn consume_with_relish<F>(f: F)
where
    F: FnOnce() -> String,
{
    println!("Consumed: {}", f());
    println!("Delicious!");
}

pub fn main() {
    let double = |x| x * 2;
    println!("call with one: {}", call_with_one(double));

    let mut x = 5;
    {
        let mut square_x = || x *= x;
        square_x();
        println!("x: {}", x);
    }

    {
        let x = 5;
        let square_x = move || x * x;
        println!("square x: {}", square_x());
    }

    {
        let x = String::from("x");
        let consume_and_return_x = move || x;
        consume_with_relish(consume_and_return_x);
    }
}
