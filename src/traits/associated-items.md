# 关联的项目 Associated Items

前文提到了, trait 主要用于在类型之间建立联系. 除了之前介绍过的, 可以在 trait 内定义
相关联的函数方法之外, 还可以为它绑定其它类型的资源.

本节主要介绍三种:

- 关联函数 associated functions
- 关联类型 associated types
- 关联常量 associated consts

## 关联函数 Associated Functions

## 关联类型 Associated Types

关联类型, 定义即与当前的 trait 相关的类型, 最常用的就是迭代器:

```rust, no_run
{{#include assets/iterator-trait.rs:2:}}
```

上面的代码来自标准库中的 `Iterator` trait, 里面的 `type Item` 就是声明的一个关联类型,
它用于表示该迭代器在每次迭代时输出的数据类型, 也就是 `next()` 方法的返回值.

## 关联常量 Associated Consts

关联常量, 可以预定义一些与当前类型或者 trait 相关联的常量值, 比如下面的例子:

```rust
{{#include assets/float.rs:5:}}
```

## 参考

- [Associated Items](https://doc.rust-lang.org/reference/items/associated-items.html)