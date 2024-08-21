// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

trait Animal {
    fn name(&self) -> &'static str;
    fn noise(&self) -> &'static str;

    fn talk(&self) {
        println!("{} says {}", self.name(), self.noise());
    }
}

struct Sheep {
    naked: bool,
    name: &'static str,
}

impl Sheep {
    fn new(name: &'static str) -> Sheep {
        Sheep {
            naked: false,
            name: name,
        }
    }

    fn is_naked(&self) -> bool {
        self.naked
    }

    fn shear(&mut self) {
        if self.is_naked() {
            println!("{} is already naked...", self.name());
        } else {
            println!("{} gets a haircut!", self.name);
            self.naked = true;
        }
    }
}

impl Animal for Sheep {
    fn name(&self) -> &'static str {
        self.name
    }

    fn noise(&self) -> &'static str {
        if self.is_naked() {
            "baaaaah?"
        } else {
            "baaaah!"
        }
    }

    fn talk(&self) {
        println!("{} pauses briefly... {}", self.name, self.noise());
    }
}

struct Cow {
    height: f64,
    name: &'static str,
}

impl Cow {
    fn new(name: &'static str) -> Cow {
        Cow {
            height: 1.0,
            name: name,
        }
    }
}

impl Animal for Cow {
    fn name(&self) -> &'static str {
        self.name
    }

    fn noise(&self) -> &'static str {
        "Woooo"
    }

    fn talk(&self) {
        println!("{} says {}", self.name(), self.noise());
    }
}

fn random_animal(random_number: f64) -> Box<dyn Animal> {
    if random_number < 0.5 {
        Box::new(Sheep::new("sheep01"))
    } else {
        Box::new(Cow::new("cow01"))
    }
}

fn main() {
    let random_number = 0.24;
    let animal = random_animal(random_number);
    println!("animal: {}, noise: {}", animal.name(), animal.noise());
}