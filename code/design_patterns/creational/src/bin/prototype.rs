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

#[derive(Debug, Clone)]
pub struct Sheep {
    name: String,
    category: String,
}

impl Sheep {
    #[must_use]
    pub fn new(name: &str) -> Self {
        Self {
            name: name.to_owned(),
            category: "Mountain Sheep".to_owned(),
        }
    }

    pub fn set_name(&mut self, name: &str) {
        self.name.clear();
        self.name.push_str(name);
    }

    #[must_use]
    pub const fn name(&self) -> &str {
        self.name.as_str()
    }

    pub fn set_category(&mut self, category: &str) {
        self.category.clear();
        self.category.push_str(category);
    }

    #[must_use]
    pub const fn category(&self) -> &str {
        self.category.as_str()
    }

    pub fn show_info(&self) {
        println!("Sheep [name: {0}, category: {1}]", self.name, self.category);
    }
}

fn main() {
    let joe = Sheep::new("Joe");
    joe.show_info();

    let mut dolly = joe.clone();
    dolly.set_name("Dolly");
    dolly.show_info();

    let mut dolly_clone = joe;
    dolly_clone.set_name("Dolly2");
    dolly_clone.show_info();
}
