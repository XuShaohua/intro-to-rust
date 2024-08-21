# 定义和实现 Trait

```rust
{{#include assets/animal-trait.rs:5:}}
```

## Inheritance

```rust
{{#include assets/person-trait.rs:5:}}
```

## dyn trait

```rust
{{#include assets/dyn-trait.rs:5:}}
```

## impl trait

```rust
{{#include assets/impl-trait.rs:5:}}
```

只要 trait 或者相应的类型在本 crate 中有声明, 就可以给这个类型实现这个 trait.
Marker Trait: 不需要实现任何具体的方法, 只是一个定义约束. 比如 `Sized`, `Copy`.

## 为外部类型实现外部的 trait

Rust 语言中的规则是, 要么类型是自己定义的, 要么 trait 是自己声明的, 这样的话才能给类型实现指定的 trait.

但有时候要给标准库或者第三方库里的类型实现外部的 trait, 怎么处理? 此时可以先定义一个新的结构体,
然后给这个结构体实现已存在的 trait, 这个方法被称为 `New Type Idiom`.

标准库并没有为 `f32` 和 `f64` 实现 `Eq`, `Ord`, `Hash` 等 traits, 但有时又确实需要实现这些
trait, 看下面的一个简陋的例子:

```rust
{{#include assets/float_eq.rs:5:}}
```

## 参考

- [New Type Idiom](https://doc.rust-lang.org/stable/rust-by-example/generics/new_types.html)