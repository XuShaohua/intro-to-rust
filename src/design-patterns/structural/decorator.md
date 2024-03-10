
# 装饰器模式 Decorator
通过将对象包装在内部, 来动态地更改对象在运行时的行为.

一些现代化的编程语言, 例如 Python, 有提供这样的语言特定, 比如在执行函数之前以及运行完成之后,
都打印出日志, 这样的需求就可以用装饰器模式来实现. 比如下面的例子:
```python
# 定义一个装饰器
def log_decorator(func):
    # inner1 是一个包装函数
    def inner1():
        print("> before function execution")
        # 调用真正的函数
        func()
        print("> after function execution")

    return inner1

# 定义一个测试用的函数, 并应有上面定义好的装饰器; `@log_decorator` 等同于下面一行代码的写法:
# say_hello = log_decorator(say_hello)
@log_decorator
def hello():
    print("hello()")

# 调用函数
say_hello()
```

## 问题描述

## 代码示例
```rust

pub trait Coffee {
    fn get_cost(&self) -> f64;
    fn get_description(&self) -> String;
}

pub struct SimpleCoffee {}

impl Default for SimpleCoffee {
    fn default() -> Self {
        Self::new()
    }
}

impl SimpleCoffee {
    #[must_use]
    pub const fn new() -> Self {
        Self {}
    }
}

impl Coffee for SimpleCoffee {
    #[must_use]
    fn get_cost(&self) -> f64 {
        10.0
    }

    #[must_use]
    fn get_description(&self) -> String {
        "Simple coffee".to_owned()
    }
}

pub struct MilkCoffee {
    inner: Box<dyn Coffee>,
}

impl MilkCoffee {
    #[must_use]
    pub const fn new(inner: Box<dyn Coffee>) -> Self {
        Self { inner }
    }
}

impl Coffee for MilkCoffee {
    #[must_use]
    fn get_cost(&self) -> f64 {
        self.inner.get_cost() + 2.0
    }

    #[must_use]
    fn get_description(&self) -> String {
        let mut desc = self.inner.get_description();
        desc.push_str(", milk");
        desc
    }
}

pub struct WilpCoffee {
    inner: Box<dyn Coffee>,
}

impl WilpCoffee {
    #[must_use]
    pub const fn new(inner: Box<dyn Coffee>) -> Self {
        Self { inner }
    }
}

impl Coffee for WilpCoffee {
    fn get_cost(&self) -> f64 {
        self.inner.get_cost() + 5.0
    }

    #[must_use]
    fn get_description(&self) -> String {
        let mut desc = self.inner.get_description();
        desc.push_str(", wilp");
        desc
    }
}

pub struct VanillaCoffee {
    inner: Box<dyn Coffee>,
}

impl VanillaCoffee {
    #[must_use]
    pub const fn new(inner: Box<dyn Coffee>) -> Self {
        Self { inner }
    }
}

impl Coffee for VanillaCoffee {
    fn get_cost(&self) -> f64 {
        self.inner.get_cost() + 3.0
    }

    #[must_use]
    fn get_description(&self) -> String {
        let mut desc = self.inner.get_description();
        desc.push_str(", vanilla");
        desc
    }
}

fn main() {
    let coffee = Box::new(SimpleCoffee::new());
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());

    let coffee = Box::new(MilkCoffee::new(coffee));
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());

    let coffee = Box::new(WilpCoffee::new(coffee));
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());

    let coffee = VanillaCoffee::new(coffee);
    println!("cost: {}", coffee.get_cost());
    println!("desc: {}", coffee.get_description());
}
```