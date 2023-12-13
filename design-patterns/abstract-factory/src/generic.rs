// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use std::marker::PhantomData;

pub trait Door {
    fn new() -> Self
    where
        Self: Sized;
    fn get_description(&self);
}

struct WoodenDoor {}

impl Door for WoodenDoor {
    fn new() -> Self {
        Self {}
    }
    fn get_description(&self) {
        println!("I am a wooden door");
    }
}

struct IronDoor {}

impl Door for IronDoor {
    fn new() -> Self {
        Self {}
    }
    fn get_description(&self) {
        println!("I am an iron door");
    }
}

pub trait DoorFittingExpert {
    fn new() -> Self
    where
        Self: Sized;
    fn get_description(&self);
}

struct Carpenter {}

impl DoorFittingExpert for Carpenter {
    fn new() -> Self {
        Self {}
    }
    fn get_description(&self) {
        println!("I can only fit wooden doors");
    }
}

struct Welder {}

impl DoorFittingExpert for Welder {
    fn new() -> Self {
        Self {}
    }
    fn get_description(&self) {
        println!("I can only fit iron doors");
    }
}

pub struct DoorFactory<D: Door, E: DoorFittingExpert> {
    door: PhantomData<D>,
    expert: PhantomData<E>,
}

impl<D: Door, E: DoorFittingExpert> DoorFactory<D, E> {
    #[must_use]
    pub const fn new() -> Self {
        Self {
            door: PhantomData,
            expert: PhantomData,
        }
    }

    pub fn make_door(&self) -> Box<dyn Door> {
        Box::new(D::new())
    }
    pub fn make_fitting_expert(&self) -> Box<dyn DoorFittingExpert> {
        Box::new(E::new())
    }
}

pub type WoodenDoorFactory = DoorFactory<WoodenDoor, Carpenter>;
pub type IronDoorFactory = DoorFactory<IronDoor, Welder>;
