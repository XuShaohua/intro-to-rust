
# Sized 与 ?Sized

`Sized` trait 是默认实现的.
```rust
struct S<T> { }
```
这种写法等同于:
```rust
struct S<T: Sized> { }
```

```rust
struct S<T: ?Sized> { }
```
就表示, 类型 `T` 不一定必须是 `Sized` trait. 所以 `?Sized` 也被称为 `Unsized` trait

实现了 `Sized` trait 的类型, 在编译期可以确定内存大小.
