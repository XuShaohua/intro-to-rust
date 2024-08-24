# 静态派发与动态派发 Static Dispatch and Dynamic Dispatch

一句话概括它们的特点:

- 静态派发 (static dispatch), 是在编译期间确定函数调用关系, 是所谓的编译期多态 compiling time polymorphism
- 动态派发 (dynamic dispatch), 是在程序运行期间, 通过对象的虚表 (vtable), 找到要调用的目标函数, 并调用它, 是所谓的运行时多态
  runtime polymorphism

可以看到, 动态派发多了查找虚表的操作, 要比静态派发慢一点点, 但是动态派发使用起来更加灵活.

举例来说:

```rust
{{#include assets/dispatch.rs:5:}}
```

## impl trait

有时候使用 trait 作为函数返回值的类型,

```rust
{{#include assets/impl-trait.rs:5:}}
```

只要 trait 或者相应的类型在本 crate 中有声明, 就可以给这个类型实现这个 trait.
Marker Trait: 不需要实现任何具体的方法, 只是一个定义约束. 比如 `Sized`, `Copy`.

## 作为传入参数

## 作为函数返回值

## 静态派发的内存操作过程

## 动态派发的内存操作过程

这里我们也会介绍 trait object 的内存结构.

先看一个示例程序:

```rust

```

## 参考

- [trait object](https://stackoverflow.com/questions/27567849/what-makes-something-a-trait-object)
