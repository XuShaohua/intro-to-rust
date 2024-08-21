# 隐藏名称 Name Hiding

或者称作 Method hiding, 或者 method shadowing, 如果一个对象定义了两个或者多个同名的函数(通过实现不同的 traits),
rustc 编译器不能推导出你想使用哪一个, 而只会使用 `impl Struct {...}` 里面声明的那个, 其它的同名函数就会被隐去了.

先看一下示例程序:

```rust
{{#include assets/name-hiding.rs:5:52}}
}
```

## 完全限定语法 Fully Qualified Syntax

这种写法就是为了消除歧义, 让编译器很清晰地找到要使用的函数, 这种写法又称为 Turbofish.

上面的代码, 如果要访问这几个 traits 中定义的 `title()` 方法, 需要这样写:

```rust
{{#include assets/name-hiding.rs:5:}}
```

另外的一个示例:

```rust
use std::rc::Rc;

fn main() {
    let rc = Rc::new(5);
    // 直接调用 trait 的方法
    let rc2 = rc.clone();
    // 使用完全限定语法
    let rc3 = Rc::clone(&rc);
}
```

## 参考

- [What is Rust's turbofish?](https://techblog.tonsser.com/posts/what-is-rusts-turbofish)
- [Advanced Traits](https://doc.rust-lang.org/book/ch19-03-advanced-traits.html#fully-qualified-syntax-for-disambiguation-calling-methods-with-the-same-name)
- [std::rc document](https://doc.rust-lang.org/std/rc/index.html)