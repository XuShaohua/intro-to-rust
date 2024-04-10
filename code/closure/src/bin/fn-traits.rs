// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn read_ref() {
    let a = String::from("Hey!");
    // Fn
    let fn_closure = || {
        println!("Closure says: {a}");
    };
    fn_closure();
    println!("Main says: {a}");
}

fn mut_ref() {
    let mut a = String::from("Hey!");
    // FnMut
    let mut fn_mut_closure = || {
        a.push_str(" Alice");
    };
    fn_mut_closure();
    println!("Main says: {a}");
}

fn take_ownership() {
    let a = Box::new(42);
    // FnOnce
    let call_me = || {
        drop(a);
    };
    call_me();
    // call_me(); will raise error
}

fn main() {
    read_ref();
    mut_ref();
    take_ownership();
}
