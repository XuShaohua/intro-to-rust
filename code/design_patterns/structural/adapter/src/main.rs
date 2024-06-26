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
#![allow(dead_code)]

pub trait Lion {
    fn roar(&self) {
        println!("I am a Lion");
    }
}

struct AfricanLion {}

impl Lion for AfricanLion {
    fn roar(&self) {
        println!("I am an African Lion");
    }
}

struct AsianLion {}

impl Lion for AsianLion {
    fn roar(&self) {
        println!("I am an Asian Lion");
    }
}

struct Hunter {}

impl Hunter {
    #[must_use]
    pub const fn new() -> Self {
        Self {}
    }

    #[allow(clippy::unused_self)]
    pub fn hunt(&self, lion: &impl Lion) {
        lion.roar();
    }
}

struct WildDog {}

impl WildDog {
    #[allow(clippy::unused_self)]
    pub fn bark(&self) {
        println!("I am a wild dog");
    }
}

struct WildDogAdapter {
    dog: WildDog,
}

impl WildDogAdapter {
    #[must_use]
    pub const fn new(dog: WildDog) -> Self {
        Self { dog }
    }
}

impl Lion for WildDogAdapter {
    fn roar(&self) {
        self.dog.bark();
    }
}

fn main() {
    let dog = WildDog {};
    let dog_adapter = WildDogAdapter::new(dog);

    let hunter = Hunter::new();
    hunter.hunt(&dog_adapter);
}
