// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

pub struct Point {
    x: f32,
    y: f32,
}

pub trait Print {
    fn print(&self);

    fn default_method(&self) {
        println!("Print::default_method()");
    }
}

impl dyn Print + 'static {
    fn print_trait_object(&self) {
        println!("Print::print_trait_object()");
    }
}

impl Print for Point {
    fn print(&self) {
        println!("Point({}, {})", self.x, self.y);
    }
}

fn static_dispatch<T: Print>(point: &T) {
    print!("static_dispatch: ");
    point.print();
    point.default_method();
}

fn dynamic_dispatch(point: &(dyn Print + 'static)) {
    print!("dynamic_dispatch: ");
    point.print();
    point.default_method();
    point.print_trait_object();
}

fn main() {
    let p = Point {x: 3.0, y: 4.0};
    static_dispatch(&p);
    println!("==============");
    dynamic_dispatch(&p);
}