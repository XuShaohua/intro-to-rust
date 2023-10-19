// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::cell::{Cell, RefCell};
use std::rc::{Rc, Weak};

fn box_demo() {
    let mut b = Box::new(42);
    *b += 1;
    assert_eq!(*b, 43);
}

fn cell_demo() {
    let x = Cell::new(42);
    let ref_to_x_1 = &x;
    let ref_to_x_2 = &x;

    ref_to_x_1.set(ref_to_x_1.get() + 1);
    ref_to_x_2.set(ref_to_x_2.get() + 1);
    assert_eq!(x.get(), 44);
}

struct Foo {
    pub number: u8,
}

#[allow(clippy::disallowed_names)]
fn refcell_demo() {
    let foo = RefCell::new(Foo { number: 42 });
    let mut ref_to_foo_1 = foo.borrow_mut();
    ref_to_foo_1.number += 1;
    drop(ref_to_foo_1);
    let mut ref_to_foo_2 = foo.borrow_mut();
    ref_to_foo_2.number += 1;
    drop(ref_to_foo_2);
    assert_eq!(foo.borrow().number, 44);
    foo.borrow_mut().number += 1;
    assert_eq!(foo.borrow().number, 45);
}

pub struct Point {
    pub x: u8,
    pub y: u8,
    cached_sum: Cell<Option<u8>>,
}

impl Point {
    pub fn new(x: u8, y: u8) -> Point {
        Point {
            x,
            y,
            cached_sum: Cell::new(None),
        }
    }
    pub fn sum(&self) -> u8 {
        match self.cached_sum.get() {
            Some(sum) => {
                println!("Got from cache: {}", sum);
                sum
            }
            None => {
                let new_sum = self.x + self.y;
                self.cached_sum.set(Some(new_sum));
                println!("Set cache: {}", new_sum);
                new_sum
            }
        }
    }
}

fn interior_mut() {
    let p = Point::new(8, 9);
    println!("summed result: {}", p.sum());
    println!("summed result: {}", p.sum());
}

#[derive(Debug)]
struct LinkedList<T> {
    head: Option<Rc<LinkedListNode<T>>>,
}

#[derive(Debug)]
struct LinkedListNode<T> {
    next: Option<Rc<LinkedListNode<T>>>,
    prev: RefCell<Option<Weak<LinkedListNode<T>>>>,
    data: T,
}

impl<T> LinkedList<T> {
    fn new() -> Self {
        LinkedList { head: None }
    }

    fn append(&self, data: T) -> Self {
        let new_node = Rc::new(LinkedListNode {
            next: self.head.clone(),
            prev: RefCell::new(None),
            data,
        });

        if let Some(node) = self.head.clone() {
            let mut prev = node.prev.borrow_mut();
            *prev = Some(Rc::downgrade(&new_node));
        }

        LinkedList {
            head: Some(new_node),
        }
    }
}

fn linked_list_demo() {
    let list_of_nums = LinkedList::new().append(1).append(2);
    println!("nums: {:?}", list_of_nums);

    let list_of_strs = LinkedList::new().append("foo").append("bar");
    println!("strs: {:?}", list_of_strs);
}

fn main() {
    box_demo();
    cell_demo();
    refcell_demo();
    interior_mut();
    linked_list_demo();
}
