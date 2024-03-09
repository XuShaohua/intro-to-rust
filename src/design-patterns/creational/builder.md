
# 建造者模式 Builder
当创建一个对象时, 需要的步骤比较多, 或者要设置的属性比较多时, 可以使用建造者模式.

标准库里有 `std::thread::Builder` 类实现了建造者模式, 可以看一下它的简单用法:
```rust
use std::thread;

let builder = thread::Builder::new().name("new-process".to_owned()).stack_size(32 * 1024);
let handler = builder.spawn(|| {
    // thread code goes here.
});
handler.join().unwrap();
```

## 问题描述
比如, 在制作汉堡时, 可以加入酱法, 奶酷或者别的配料, 根据配料的差异, 可以制作出不同口味的汉堡.

## 代码示例
```rust
#[derive(Debug, Clone)]
pub struct Burger {
    size: u32,
    cheese: bool,
    peperoni: bool,
    lettuce: bool,
    tomato: bool,
}

impl Burger {
    pub fn new(size: u32) -> Self {
        Self {
            size,
            cheese: false,
            peperoni: false,
            lettuce: false,
            tomato: false,
        }
    }

    pub fn show_flavors(&self) {
        print!("{}", self.size);
        if self.cheese {
            print!("-cheese");
        }
        if self.peperoni {
            print!("-peperoni");
        }
        if self.lettuce {
            print!("-lettuce");
        }
        if self.tomato {
            print!("-tomato");
        }
        println!();
    }
}

pub struct BurgerBuilder {
    burger: Burger,
}

impl BurgerBuilder {
    pub fn new(size: u32) -> Self {
        Self {
            burger: Burger::new(size),
        }
    }

    pub fn add_pepperoni(&mut self) -> &mut Self {
        self.burger.peperoni = true;
        self
    }

    pub fn add_lettuce(&mut self) -> &mut Self {
        self.burger.lettuce = true;
        self
    }

    pub fn add_cheese(&mut self) -> &mut Self {
        self.burger.cheese = true;
        self
    }

    pub fn add_tomato(&mut self) -> &mut Self {
        self.burger.tomato = true;
        self
    }

    pub fn build(&mut self) -> Burger {
        self.burger.clone()
    }
}

fn main() {
    let burger = BurgerBuilder::new(14)
        .add_pepperoni()
        .add_lettuce()
        .add_tomato()
        .build();
    burger.show_flavors();
}
```