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

pub trait Door {
    fn open(&self);
    fn close(&self);
}

pub struct LabDoor {}

impl Door for LabDoor {
    fn open(&self) {
        println!("Opening lab door");
    }

    fn close(&self) {
        println!("Closing lab door");
    }
}

pub struct SecureDoor {
    door: LabDoor,
}

impl SecureDoor {
    #[must_use]
    pub const fn new(door: LabDoor) -> Self {
        Self { door }
    }

    pub fn open(&self, password: &str) {
        if Self::authenticate(password) {
            self.door.open();
        } else {
            println!("Big no! It ain't possible!");
        }
    }

    pub fn close(&self) {
        self.door.close();
    }

    fn authenticate(password: &str) -> bool {
        password == "$ecr@t"
    }
}

fn main() {
    let door = SecureDoor::new(LabDoor {});
    door.open("Invalid");
    door.open("$ecr@t");
    door.close();
}
