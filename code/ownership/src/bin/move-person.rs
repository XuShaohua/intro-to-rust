// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[derive(Debug, Clone)]
pub struct Person {
    name: String,
}

impl Person {
    #[must_use]
    #[inline]
    pub const fn new(name: String) -> Self {
        Self { name }
    }

    #[must_use]
    #[inline]
    pub fn name(&self) -> &str {
        &self.name
    }
}

#[allow(unused_variables)]
fn main() {
    let name = "Julia".to_owned();
    let p2 = Person::new(name);

    println!("creating p3");
    let p3 = Person::new("Julia".to_owned());

    // 使用 clone
    println!("creating p4:");
    let p4 = p3.clone();

    // 使用 move
    println!("creating p5:");
    let p5 = p4;
}
