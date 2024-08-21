# 定义和实现 Trait

```rust
{{#include assets/animal-trait.rs:5:}}
```

## Inheritance

```rust
{{#include assets/person-trait.rs:5:}}
```

## 空的 trait

标准库中定义了好几个空的 trait, 这些 trait 只有名称, 没有约束任何的方法或者别的类型, 比如:

- Sized
- Copy
- Send
- Sync

声明它们的代码很简单:

```rust, no_run
pub trait Copy: Clone { }
pub trait Sized { }
pub unsafe auto trait Send { }
pub unsafe auto trait Sync { }
```

通常这些类型都被编译器使用:

- Copy trait 可以让类型通过拷贝比特位来复制其值
- Send/Sync, 用于实现跨线程访问共享的状态
- Sized, 要求类型在编译期有确定的内存大小占用, 否则就是 dynamic sized type

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
- [Using the Newtype Pattern to Implement External Traits on External Types](https://doc.rust-lang.org/book/ch19-03-advanced-traits.html#using-the-newtype-pattern-to-implement-external-traits-on-external-types)