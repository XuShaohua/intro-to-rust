// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

pub trait Door {
    fn get_description(&self);
}

pub struct WoodenDoor {}

impl Door for WoodenDoor {
    fn get_description(&self) {
        println!("I am a wooden door");
    }
}

pub struct IronDoor {}

impl Door for IronDoor {
    fn get_description(&self) {
        println!("I am an iron door");
    }
}

pub trait DoorFittingExpert {
    fn get_description(&self);
}

pub struct Carpenter {}

impl DoorFittingExpert for Carpenter {
    fn get_description(&self) {
        println!("I can only fit wooden doors");
    }
}

pub struct Welder {}

impl DoorFittingExpert for Welder {
    fn get_description(&self) {
        println!("I can only fit iron doors");
    }
}

pub trait DoorFactory {
    type D: Door;
    type E: DoorFittingExpert;

    fn make_door(&self) -> Self::D;

    fn make_fitting_expert(&self) -> Self::E;
}

pub struct WoodenDoorFactory {}

impl Default for WoodenDoorFactory {
    fn default() -> Self {
        Self::new()
    }
}

impl WoodenDoorFactory {
    #[must_use]
    pub const fn new() -> Self {
        Self {}
    }
}

impl DoorFactory for WoodenDoorFactory {
    type D = WoodenDoor;
    type E = Carpenter;

    fn make_door(&self) -> Self::D {
        Self::D {}
    }

    fn make_fitting_expert(&self) -> Self::E {
        Self::E {}
    }
}

pub struct IronDoorFactory {}

impl Default for IronDoorFactory {
    fn default() -> Self {
        Self::new()
    }
}

impl IronDoorFactory {
    #[must_use]
    pub const fn new() -> Self {
        Self {}
    }
}

impl DoorFactory for IronDoorFactory {
    type D = IronDoor;
    type E = Welder;

    fn make_door(&self) -> Self::D {
        Self::D {}
    }

    fn make_fitting_expert(&self) -> Self::E {
        Self::E {}
    }
}

fn main() {
    println!("test_static_dispatch()");

    {
        let wooden_factory = WoodenDoorFactory::new();
        let door = wooden_factory.make_door();
        door.get_description();
        let expert = wooden_factory.make_fitting_expert();
        expert.get_description();
    }

    {
        let iron_factory = IronDoorFactory::new();
        let door = iron_factory.make_door();
        door.get_description();
        let expert = iron_factory.make_fitting_expert();
        expert.get_description();
    }
}
