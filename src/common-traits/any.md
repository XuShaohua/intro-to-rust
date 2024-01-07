
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
let actual_id = (&*b).type_id();
assert_eq!(actual_id, TypeId::of::<i32>());
```

## 相关内容
- [Box Any](../mem/box.md)