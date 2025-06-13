// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#![deny(
    warnings,
    clippy::all,
    clippy::cargo,
    clippy::nursery,
    clippy::pedantic
)]

pub trait Coffee {
    fn get_cost(&self) -> f64;
    fn get_description(&self) -> String;
}

pub struct SimpleCoffee {}

impl Default for SimpleCoffee {
    fn default() -> Self {
        Self::new()
    }
}

impl SimpleCoffee {
    #[must_use]
    pub const fn new() -> Self {
        Self {}
    }
}

impl Coffee for SimpleCoffee {
    fn get_cost(&self) -> f64 {
        10.0
    }

    fn get_description(&self) -> String {
        "Simple coffee".to_owned()
    }
}

pub struct MilkCoffee {
    inner: Box<dyn Coffee>,
}

impl MilkCoffee {
    #[must_use]
    pub const fn new(inner: Box<dyn Coffee>) -> Self {
        Self { inner }
    }
}

impl Coffee for MilkCoffee {
    fn get_cost(&self) -> f64 {
        self.inner.get_cost() + 2.0
    }

    fn get_description(&self) -> String {
        let mut desc = self.inner.get_description();
        desc.push_str(", milk");
        desc
    }
}

pub struct WilpCoffee {
    inner: Box<dyn Coffee>,
}

impl WilpCoffee {
    #[must_use]
    pub const fn new(inner: Box<dyn Coffee>) -> Self {
        Self { inner }
    }
}

impl Coffee for WilpCoffee {
    fn get_cost(&self) -> f64 {
        self.inner.get_cost() + 5.0
    }

    fn get_description(&self) -> String {
        let mut desc = self.inner.get_description();
        desc.push_str(", wilp");
        desc
    }
}

pub struct VanillaCoffee {
    inner: Box<dyn Coffee>,
}

impl VanillaCoffee {
    #[must_use]
    pub const fn new(inner: Box<dyn Coffee>) -> Self {
        Self { inner }
    }
}

impl Coffee for VanillaCoffee {
    fn get_cost(&self) -> f64 {
        self.inner.get_cost() + 3.0
    }

    fn get_description(&self) -> String {
        let mut desc = self.inner.get_description();
        desc.push_str(", vanilla");
        desc
    }
}

fn main() {
    let coffee = Box::new(SimpleCoffee::new());
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());

    let coffee = Box::new(MilkCoffee::new(coffee));
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());

    let coffee = Box::new(WilpCoffee::new(coffee));
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());

    let coffee = VanillaCoffee::new(coffee);
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());
}
