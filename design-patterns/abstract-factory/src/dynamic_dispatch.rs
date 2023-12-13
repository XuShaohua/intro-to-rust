// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

pub trait Door {
    fn get_description(&self);
}

struct WoodenDoor {}

impl Door for WoodenDoor {
    fn get_description(&self) {
        println!("I am a wooden door");
    }
}

struct IronDoor {}

impl Door for IronDoor {
    fn get_description(&self) {
        println!("I am an iron door");
    }
}

pub trait DoorFittingExpert {
    fn get_description(&self);
}

struct Carpenter {}

impl DoorFittingExpert for Carpenter {
    fn get_description(&self) {
        println!("I can only fit wooden doors");
    }
}

struct Welder {}

impl DoorFittingExpert for Welder {
    fn get_description(&self) {
        println!("I can only fit iron doors");
    }
}

pub trait DoorFactory {
    fn make_door(&self) -> Box<dyn Door>;

    fn make_fitting_expert(&self) -> Box<dyn DoorFittingExpert>;
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
    fn make_door(&self) -> Box<dyn Door> {
        Box::new(WoodenDoor {})
    }

    fn make_fitting_expert(&self) -> Box<dyn DoorFittingExpert> {
        Box::new(Carpenter {})
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
    fn make_door(&self) -> Box<dyn Door> {
        Box::new(WoodenDoor {})
    }

    fn make_fitting_expert(&self) -> Box<dyn DoorFittingExpert> {
        Box::new(Carpenter {})
    }
}
