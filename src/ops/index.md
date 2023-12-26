
# 操作符重载 Operator Overloading

为某个类型实现加减乘除等自定义操作, 就是所谓的操作符重载.

本章使用 `Vector2D` 作为示例, 它的定义如下:

```rust
#[derive(Debug, Default, Clone, PartialEq)]
pub struct Vector2D {
  x: f32,
  y: f32,
}
```

在 [std::ops模块](https://doc.rust-lang.org/std/ops/index.html) 里, 定义了这些要被重载的 traits.