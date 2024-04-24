# Sized 与 ?Sized

实现了 `Sized` trait 的类型, 在编译期可以确定内存大小.

`Sized` trait 是默认实现的.

```rust, ignore
struct S<T> { }
```

这种写法等同于:

```rust, ignore
struct S<T: Sized> { }
```

以下写法就表示类型 `T` 不一定必须是 `Sized` trait, 所以 `?Sized` 也被称为 `Unsized` trait:

```rust, ignore
struct S<T: ?Sized> { }
```
