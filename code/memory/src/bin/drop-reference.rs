// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[allow(dropping_references)]
fn main() {
    let my_vec = vec!["Hello"];
    let first_elem: &str = my_vec.first().unwrap();
    println!("my_vec: {my_vec:?}");
    // cargo clippy throws error!
    // Dropping reference does nothing!
    drop(first_elem);
    println!("first_element: {first_elem}");
    println!("my_vec: {my_vec:?}");
    drop(my_vec);
}
