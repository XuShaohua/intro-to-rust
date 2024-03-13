# Any

`Any` trait 常用于 `trait object`, 用于实现类型反射.
有几种使用形式:

- `&dyn Any`, 调用 `downcast_ref()`, 得到只读引用
- `&mut dyn Any`, 调用 `downcast_mut()`, 得到可变更引用
- `Box<dyn Any>`, 调用 `downcast()` 方法, 得到 `Box<T>`

比如:

```rust
use std::any::Any;
let b: Box<dyn Any> = Box::new("hello".to_owned());
assert!(b.downcast::<String>().is_ok());
```

## 智能指针

比如 `Box<dyn Any>` 或者 `Arc<dyn Any>`, 在获取 `type_id()`时, 应先把它们转成引用:

```rust
use std::any::{Any, TypeId};
let b: Box<dyn Any> = Box::new(42_i32);
let actual_id = ( & * b).type_id();
assert_eq!(actual_id, TypeId::of::<i32>());
```

## 向上转型

有时候, 我们需要从一个 trait object 转型为一个具体的类型, 举个例子:

接口部分的代码 (platform.rs):

```rust, not_run
pub trait Platform {
    fn rect(&self, element: dyn Element) -> Rect;
    fn scale(&self) -> Option<Scale>;
}

pub struct State {
  platform: Rc<dyn Platform>,
}
```

特定平台实现的代码 (canvas_platform.rs):

```rust, not_run
pub struct CanvasPlatform {
  ...
}

impl Platform for CanvasPlatform {
  ...
}
```

这里, `State` 结构体里面只存放了一个 Platform trait object, 我们并不能直接调用 `CanvasPlatform`
对象特有的方法. 为此, 可以给 `Platform` trait 添加一个特别的方法, 让它能转换成 `Any` trait:

```rust, not_run
pub trait Platform {
    fn as_any(&self) -> &dyn Any;

    ...
}
```

然后为 `CanvasPlatform` 实现这个方法:

```rust, not_run
impl Platform for CanvasPlatform {
  #[inline]
  #[must_use]
  fn as_any(&self) -> &dyn Any {
    self
  }
}
```

更复杂的转型可以考虑使用第三方库 [bevy_reflect](https://docs.rs/bevy_reflect/latest/bevy_reflect/).

## 相关内容

- [Box Any](../mem/box.md)
- [Downcast](https://ysantos.com/blog/downcast-rust)
- [bevy_reflect](https://docs.rs/bevy_reflect/latest/bevy_reflect/)
- [Rust 反射](https://zhuanlan.zhihu.com/p/615577638)