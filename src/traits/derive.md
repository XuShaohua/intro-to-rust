# Derive: 自动继承常见的 trait

上文介绍了如何定义和实现 trait, 但对于一些常用的 traits, 比如 `Debug`, `Default`, `Clone` 等,
这些 traits 的行为都很单一, 手动编写的代码几乎一样, 如果每个新的类型都要手动实现一次, 比较烦琐,

Rust 提供了 `#[derive(Trait)]` 属性标记, 由编译器自动帮我们实现这些常用的 traits.

比如下面的 `Point` 结构体:

```rust
{{#include assets/point.rs:7:16}}
```

或者 `Side` 枚举类:

```rust
{{#include assets/margin.rs:7:14}}
```

## 继承宏 Derive macro

除了标准库中预定义好的可直接继承的 traits 之外, 我们也可以对其进行扩展, 这部分涉及到了过程宏,
我们在[继承宏](../macros/proc-macro/derive-macro.md) 这一节有详细的介绍.

## 参考

- [Derive](https://doc.rust-lang.org/reference/attributes/derive.html)