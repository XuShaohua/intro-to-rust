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

use std::cell::RefCell;
use std::rc::Rc;

/// The Receiver
pub struct Bulb {}

impl Bulb {
    pub fn turn_on(&mut self) {
        println!("Bulb has been lit");
    }

    pub fn turn_off(&mut self) {
        println!("Darkness!");
    }
}

pub type BulbNode = Rc<RefCell<Bulb>>;

pub trait Command {
    fn execute(&mut self);
    fn undo(&mut self);
    fn redo(&mut self);
}

pub struct TurnOn {
    bulb: BulbNode,
}

impl TurnOn {
    pub const fn new(bulb: BulbNode) -> Self {
        Self { bulb }
    }
}

impl Command for TurnOn {
    fn execute(&mut self) {
        self.bulb.borrow_mut().turn_on();
    }

    fn undo(&mut self) {
        self.bulb.borrow_mut().turn_off();
    }

    fn redo(&mut self) {
        self.execute();
    }
}

pub struct TurnOff {
    bulb: BulbNode,
}

impl TurnOff {
    #[must_use]
    pub const fn new(bulb: BulbNode) -> Self {
        Self { bulb }
    }
}

impl Command for TurnOff {
    fn execute(&mut self) {
        self.bulb.borrow_mut().turn_off();
    }

    fn undo(&mut self) {
        self.bulb.borrow_mut().turn_on();
    }

    fn redo(&mut self) {
        self.execute();
    }
}

/// The Invoker
pub struct RemoteControl {}

impl RemoteControl {
    pub fn submit(&self, command: &mut impl Command) {
        command.execute();
    }
}

fn main() {
    let bulb = Rc::new(RefCell::new(Bulb {}));
    let mut turn_on = TurnOn::new(bulb.clone());
    let mut turn_off = TurnOff::new(bulb);

    let remote = RemoteControl {};
    remote.submit(&mut turn_on);
    remote.submit(&mut turn_off);
}
