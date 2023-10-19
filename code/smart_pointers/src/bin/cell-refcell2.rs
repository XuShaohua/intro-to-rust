use std::cell::{Cell, RefCell};
use std::mem::{size_of, size_of_val};

#[derive(Default)]
pub struct Foo {
    pub x1: i32, // 4
    pub x2: i32, // 4
    pub x3: i64, // 8
    pub x4: i32, // 4
}

fn main() {
    let c1 = Cell::new(42_i32);
    println!("size of c1: {}", size_of_val(&c1));

    let c2 = RefCell::new(42_i32);
    println!("size of c2: {}", size_of_val(&c2));

    let c3 = RefCell::<Foo>::default();
    println!("size of c3: {}", size_of_val(&c3));

    println!("size of struct Foo: {}", size_of::<Foo>());
}
