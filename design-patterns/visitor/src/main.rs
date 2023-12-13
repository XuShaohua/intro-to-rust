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

/// Visitee
pub trait Animal {
    fn accept(&self, operation: &impl AnimalOperation);
}

/// Visitor
pub trait AnimalOperation {
    fn visit_monkey(&self, monkey: &Monkey);
    fn visit_lion(&self, lion: &Lion);
    fn visit_dolphin(&self, dolphin: &Dolphin);
}

#[derive(Default)]
pub struct Monkey {}

impl Monkey {
    pub fn shout(&self) {
        println!("Oooh oo aa aa!");
    }
}

impl Animal for Monkey {
    fn accept(&self, operation: &impl AnimalOperation) {
        operation.visit_monkey(self);
    }
}

#[derive(Default)]
pub struct Lion {}

impl Lion {
    pub fn roar(&self) {
        println!("Roaaaar!");
    }
}

impl Animal for Lion {
    fn accept(&self, operation: &impl AnimalOperation) {
        operation.visit_lion(self);
    }
}

#[derive(Default)]
pub struct Dolphin {}

impl Dolphin {
    pub fn speak(&self) {
        println!("Tutt tuttu tuut");
    }
}

impl Animal for Dolphin {
    fn accept(&self, operation: &impl AnimalOperation) {
        operation.visit_dolphin(self);
    }
}

#[derive(Default)]
pub struct Speak {}

impl AnimalOperation for Speak {
    fn visit_monkey(&self, monkey: &Monkey) {
        monkey.shout();
    }

    fn visit_lion(&self, lion: &Lion) {
        lion.roar();
    }

    fn visit_dolphin(&self, dolphin: &Dolphin) {
        dolphin.speak();
    }
}

#[derive(Default)]
pub struct Jump {}

impl AnimalOperation for Jump {
    fn visit_monkey(&self, _monkey: &Monkey) {
        println!("Jumped 20 feet high! on to the tree!");
    }

    fn visit_lion(&self, _lion: &Lion) {
        println!("Jumped 7 feet! Back to the ground!");
    }

    fn visit_dolphin(&self, _dolphin: &Dolphin) {
        println!("Walked on water a little and disappeared!");
    }
}

fn main() {
    let monkey = Monkey::default();
    let lion = Lion::default();
    let dolphin = Dolphin::default();

    let speak = Speak::default();
    let jump = Jump::default();

    monkey.accept(&speak);
    monkey.accept(&jump);
    lion.accept(&speak);
    lion.accept(&jump);
    dolphin.accept(&speak);
    dolphin.accept(&jump);
}
