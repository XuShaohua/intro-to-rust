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

mod dynamic_dispatch;
mod static_dispatch;

fn test_static_dispatch() {
    use crate::static_dispatch::{
        Door, DoorFactory, DoorFittingExpert, IronDoorFactory, WoodenDoorFactory,
    };

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

fn test_dynamic_dispatch() {
    use crate::dynamic_dispatch::{DoorFactory, IronDoorFactory, WoodenDoorFactory};

    println!("test_dynamic_dispatch()");

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

fn main() {
    test_static_dispatch();
    test_dynamic_dispatch();
}
