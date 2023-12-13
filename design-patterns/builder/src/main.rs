// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

#[derive(Debug, Clone)]
pub struct Burger {
    size: u32,
    cheese: bool,
    peperoni: bool,
    lettuce: bool,
    tomato: bool,
}

impl Burger {
    pub fn new(size: u32) -> Self {
        Self {
            size,
            cheese: false,
            peperoni: false,
            lettuce: false,
            tomato: false,
        }
    }

    pub fn show_flavors(&self) {
        print!("{}", self.size);
        if self.cheese {
            print!("-cheese");
        }
        if self.peperoni {
            print!("-peperoni");
        }
        if self.lettuce {
            print!("-lettuce");
        }
        if self.tomato {
            print!("-tomato");
        }
        println!();
    }
}

pub struct BurgerBuilder {
    burger: Burger,
}

impl BurgerBuilder {
    pub fn new(size: u32) -> Self {
        Self {
            burger: Burger::new(size),
        }
    }

    pub fn add_pepperoni(&mut self) -> &mut Self {
        self.burger.peperoni = true;
        self
    }

    pub fn add_lettuce(&mut self) -> &mut Self {
        self.burger.lettuce = true;
        self
    }

    pub fn add_cheese(&mut self) -> &mut Self {
        self.burger.cheese = true;
        self
    }

    pub fn add_tomato(&mut self) -> &mut Self {
        self.burger.tomato = true;
        self
    }

    pub fn build(&mut self) -> Burger {
        self.burger.clone()
    }
}

fn main() {
    let burger = BurgerBuilder::new(14)
        .add_pepperoni()
        .add_lettuce()
        .add_tomato()
        .build();
    burger.show_flavors();
}
