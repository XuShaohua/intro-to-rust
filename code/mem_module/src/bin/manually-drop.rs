// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::ManuallyDrop;

pub struct Sheep {
    name: String,
}

pub struct Cow {
    name: String,
}

pub struct Horse {
    name: String,
}

impl Drop for Sheep {
    fn drop(&mut self) {
        println!("Dropping sheep {}", self.name);
    }
}

impl Drop for Cow {
    fn drop(&mut self) {
        println!("Dropping cow {}", self.name);
    }
}

impl Drop for Horse {
    fn drop(&mut self) {
        println!("Dropping horse {}", self.name);
    }
}

pub struct Animals {
    sheep: ManuallyDrop<Sheep>,
    #[allow(dead_code)]
    horse: Horse,
    cow: ManuallyDrop<Cow>,
}

impl Drop for Animals {
    fn drop(&mut self) {
        println!("Dropping animals");
        unsafe {
            // 手动调用 `drop()` 释放这两个对象.
            ManuallyDrop::drop(&mut self.sheep);
            ManuallyDrop::drop(&mut self.cow);
            // 而 horse 对象会被自动释放.
        }
    }
}

#[allow(unused_variables)]
fn main() {
    let animals = Animals {
        sheep: ManuallyDrop::new(Sheep {
            name: "Doly".to_owned(),
        }),
        horse: Horse {
            name: "Tom".to_owned(),
        },
        cow: ManuallyDrop::new(Cow {
            name: "Jery".to_owned(),
        }),
    };
    // 使用 mem::forget() 会导致内存泄露
    //mem::forget(animals);
}
