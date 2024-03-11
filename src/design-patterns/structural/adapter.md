
# 适配器模式
比如, 在大陆用的手机充电器, 并不能直接在德国使用, 因为电源接口类型不一致. 如果想使用的话,
需要在充电器上面加一个转接器(适配器), 才能插在插排上.

## 问题描述

## 代码示例
```rust

pub trait Lion {
    fn roar(&self) {
        println!("I am a Lion");
    }
}

struct AfricanLion {}

impl Lion for AfricanLion {
    fn roar(&self) {
        println!("I am an African Lion");
    }
}

struct AsianLion {}

impl Lion for AsianLion {
    fn roar(&self) {
        println!("I am an Asian Lion");
    }
}

struct Hunter {}

impl Hunter {
    #[must_use]
    pub const fn new() -> Self {
        Self {}
    }

    #[allow(clippy::unused_self)]
    pub fn hunt(&self, lion: &impl Lion) {
        lion.roar();
    }
}

struct WildDog {}

impl WildDog {
    #[allow(clippy::unused_self)]
    pub fn bark(&self) {
        println!("I am a wild dog");
    }
}

struct WildDogAdapter {
    dog: WildDog,
}

impl WildDogAdapter {
    #[must_use]
    pub const fn new(dog: WildDog) -> Self {
        Self { dog }
    }
}

impl Lion for WildDogAdapter {
    fn roar(&self) {
        self.dog.bark();
    }
}

fn main() {
    let dog = WildDog {};
    let dog_adapter = WildDogAdapter::new(dog);

    let hunter = Hunter::new();
    hunter.hunt(&dog_adapter);
}

```
