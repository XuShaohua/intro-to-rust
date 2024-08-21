# 定义和实现 Trait

定义 trait 比较简单, 其语法如下:

```rust, no_run
pub trait TraitName {
  fn method1(&self, ...) -> Retrun1;
  fn function2(...) -> Return2;
  ...
}
```

先看一下标准库中 `fmt::Debug` trait:

```rust, no_run
pub trait Debug {
    // Required method
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result;
}
```

该 trait 只声明了一个方法 `fmt()`, 要为自己定义的类型实现这个方法, 也很简单:

```rust
{{#include assets/point2.rs:5:19}}
```

另一个常用的 trait 是 `Default` trait, 用于实现类型的默认值, 其定义如下:

```rust
pub trait Default: Sized {
    // Required method
    fn default() -> Self;
}
```

接下来给上面的 `Point` 结构体实现这个 trait:

```rust, no_run
{{#include assets/point2.rs:21:28}}
```

## 实现方法

在 trait 中, 可以只声明方法 (method declaration), 也可以同时定义方法 (method default definition),
即编写该方法的默认实现, 但可以被外部类型所覆盖.

看一下标准库中的例子:

```rust, no_run

```

## 继承 trait

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