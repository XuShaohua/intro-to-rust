
# Default trait

`Default` trait 用于返回一个类型的默认值, 其定义如下:

```rust
pub trait Default: Sized {
    // Required method
    fn default() -> Self;
}
```

Rust 里的基础数据类型都实现了这个 trait, 比如布尔类型的默认值是 `false`:
```rust
default_impl! { bool, false, "Returns the default value of `false`" }
```

其它常用类型的默认值列举如下表如示:

| 类型          | 默认值     |
|-------------|---------|
| `bool`      | `false` |
| `i8`          | `0`     |
| `i16` | `0`     |
| `i32` | `0`     |
| `i64` | `0`     |
| `i128` | `0`     |
| `isize` | `0`     |
| `u8` | `0`     |
| `u16` | `0`     |
| `u32` | `0`     |
| `u64` | `0`     |
| `u128` | `0`     |
| `usize` | `0`     |
| `f32` | `0.0`   |
| `f64` | `0.0`   |
| `char`      | `\x00`  |
| `unit`      | `()`    |
| `slice` | empty   |
| `str` | epmty  |
| `Option<T>` | `None`  |
| `String` | empty |


## Struct

对于自定义的结构体, 如果结构体内部的元素都实现了 `Default` trait, 那只需要让该结构体 `derive Default`,
比如:

```rust
#[derive(Default)]
pub struct Point {
  x: f32,
  y: f32,
}
```

以上定义的 `Point` 结构体, 同时实现了 `Default` trait. 等同于手动编写的代码:
```rust
pub struct Point {
    x: f32,
    y: f32,
}

impl Default for Point {
  fn default() -> Self {
      Self {
          x: f32::default(),
          y: f32::default(),
      }
  }
} 
```

对于一个实现了 `Default` trait 的结构体, 在创建该结构体实例时, 可以只手动指定某具元还给, 然后调用
`Default::default()` 方法用默认值补全剩下的元素:
```rust

#[derive(Default)]
pub struct Point {
    x: f32,
    y: f32,
}

impl Point {
    #[inline]
    #[must_use]
    pub fn from_x(x: f32) -> Self {
        Self {
            x,
            ..Default::default()
        }
    }
}
```

## Enum

对于枚举类, 可以通过 `#[default]` 标签属性来指定哪个值是默认的, 看下面的示例代码:
```rust
#[derive(Default)]
pub enum Color {
    #[default]
    Primary,
    Secondary,
    Success,
    Info,
    Warning,
    Error,
    Inherit,
}
```