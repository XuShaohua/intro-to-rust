
# Deref 与 DerefMut

`Deref`, `DerefMut` trait 主要用于一些智能指针类型, 比如 `Box`, `Rc`, `Arc`.

`Deref` trait 的定义:
```rust
pub trait Deref: ?Sized {
  type Target: ?Sized;
  fn deref(&self) -> &Self::Target;
}
```
