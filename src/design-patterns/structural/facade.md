
# 门面模式 Facade

## 问题描述

## 代码示例
```rust

#[derive(Default)]
pub struct Computer {}

impl Computer {
    pub fn get_electric_shock(&self) {
        println!("Ouch!");
    }

    pub fn make_sound(&self) {
        println!("Beep beep!");
    }

    pub fn show_loading_screen(&self) {
        println!("Loading..");
    }

    pub fn bam(&self) {
        println!("Ready to be used!");
    }

    pub fn close_every_thing(&self) {
        println!("Bup bup bup buzzz!");
    }

    pub fn sooth(&self) {
        println!("Zzzzz");
    }

    pub fn pull_current(&self) {
        println!("Haaah!");
    }
}

pub struct ComputerFacade {
    computer: Computer,
}

impl ComputerFacade {
    #[must_use]
    pub const fn new(computer: Computer) -> Self {
        Self { computer }
    }

    pub fn turn_on(&self) {
        println!("Turning on!");
        self.computer.get_electric_shock();
        self.computer.make_sound();
        self.computer.show_loading_screen();
        self.computer.bam();
    }

    pub fn turn_off(&self) {
        println!("Turning off!");
        self.computer.close_every_thing();
        self.computer.pull_current();
        self.computer.sooth();
    }
}

fn main() {
    let computer = ComputerFacade::new(Computer::default());
    computer.turn_on();
    computer.turn_off();
}
```