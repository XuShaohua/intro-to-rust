
# 简单工厂模式 Simple factory
工厂 (factory), 在面向对象编程(OOP)中, 是用于创建其它对象的对象, 根据传入的不同参数, 而返回变化的对象.
这里的工厂, 可能是一个类, 然后这个类有一个工厂函数; 也可能只是一个独立的函数而已.

使用简单工厂, 创建具体的对象; 而使用者并不直接调用类的构造函数.

## 问题描述
装修房子时, 你需要一个木门. 你并不需要了解这个门是如何制造的, 你只需要把想要的门的尺寸告诉给制作门的
工厂, 然后他们就按要求生产木门了.

## 程序示例

```rust
/// 门的接口
pub trait Door {
    fn width(&self) -> f32;
    fn height(&self) -> f32;
}

/// 用于保存木门的内部属性, 它们不是 `pub` 的.
struct WoodenDoor {
    width: f32,
    height: f32,
}

impl WoodenDoor {
    /// 木门的构造函数, 要注意, 它并不是 `pub` 的.
    #[must_use]
    const fn new(width: f32, height: f32) -> Self {
        Self { width, height }
    }
}

/// 为木门实现门的接口
impl Door for WoodenDoor {
    #[inline]
    fn width(&self) -> f32 {
        self.width
    }

    #[inline]
    fn height(&self) -> f32 {
        self.height
    }
}

/// 简单工厂函数, 它返回的是一个 trait object
#[must_use]
pub fn make_door(width: f32, height: f32) -> Box<dyn Door> {
    Box::new(WoodenDoor::new(width, height))
}

fn main() {
    // Make me a new door of 100x200
    let door = make_door(100.0, 200.0);
    println!("door.width: {}, height: {}", door.width(), door.height());

    // Make me a door of 50x100
    let _door2 = make_door(50.0, 100.0);
}
```