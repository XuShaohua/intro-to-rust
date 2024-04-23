# 隐藏名称 Name Hiding

或者称作 Method hiding, 或者 method shadowing, 如果一个对象定义了两个或者多个同名的函数(通过实现不同的 traits),
rustc 编译器不能推导出你想使用哪一个, 而只会使用 `impl Struct {...}` 里面声明的那个, 其它的同名函数就会被隐去了.

先看一下示例程序:

```rust
struct Child {
    name: String,
}

impl Child {
    fn title(&self) {
        println!("Child: {}", self.name);
    }
}

trait Student {
    fn title(&self);
}

/// 班长
trait ClassPresident {
    fn title(&self);
}

/// 数学课代表
trait MathRepresentative {
    fn title(&self);
}

impl Student for Child {
    fn title(&self) {
        println!("Student: {}", self.name);
    }
}

impl ClassPresident for Child {
    fn title(&self) {
        println!("Class president: {}", self.name);
    }
}

impl MathRepresentative for Child {
    fn title(&self) {
        println!("Math representative: {}", self.name);
    }
}

fn main() {
    let child = Child {
        name: "Joey".to_owned(),
    };
    child.title();
    Student::title(&child);
    <Child as ClassPresident>::title(&child);
    MathRepresentative::title(&child);
}
```

## 完全限定语法 Fully Qualified Syntax

这种写法就是为了消除歧义, 让编译器很清晰地找到要使用的函数.

```rust
use std::rc::Rc;

fn main() {
    let rc = Rc::new(5);
    // Method call syntax
    let rc2 = rc.clone();
    // Fully qualified syntax
    let rc3 = Rc::clone(&rc);
}
```

## 参考

- [Advanced Traits](https://doc.rust-lang.org/book/ch19-03-advanced-traits.html#fully-qualified-syntax-for-disambiguation-calling-methods-with-the-same-name)
- [std::rc document](https://doc.rust-lang.org/std/rc/index.html)