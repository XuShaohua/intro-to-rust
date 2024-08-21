// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

trait Contains {
    type A;
    type B;

    #[allow(dead_code)]
    fn contains(&self, _: &Self::A, _: &Self::B) -> bool;

    fn first(&self) -> i32;
    fn last(&self) -> i32;
}

struct Container(i32, i32);

impl Contains for Container {
    type A = i32;
    type B = i32;

    fn contains(&self, n1: &i32, n2: &i32) -> bool {
        (&self.0 == n1) && (&self.1 == n2)
    }

    fn first(&self) -> i32 {
        self.0
    }

    fn last(&self) -> i32 {
        self.1
    }
}

fn difference<C: Contains>(c: &C) -> i32 {
    c.first() - c.last()
}

fn main() {
    let c = Container(42, 41);
    println!("difference: {}", difference(&c));
}