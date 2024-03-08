
# 抽象工厂模式 Abstract factory

维基百科:
> 抽象工厂模式提供了一种封装一组具有共同主题但没有指定其具体类的单个工厂的方法

## 问题描述
从之前讲到的[简单工厂](simple-factory.md)扩展出新的问题.
可以从木门店买木门, 从铁门店买铁门, 或者从别的店买玻璃门. 另外, 在之后的安程过程中, 需要有木匠来
安装木门, 焊工安装铁门等等. 可以看到, 门与安装工之间存在着依赖关系, 木门需要木匠, 铁门需要焊工,
而玻璃门需要别的安装工.

## 代码示例

```rust

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
```