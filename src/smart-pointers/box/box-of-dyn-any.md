# `Box<dyn Any>` 实现类型反射

`Box<dyn Any>` 可以实现类似 C 语言中的 `void*` 的效果, 可以较为快捷进行向下转型:

```rust
use std::any::Any;

fn print_is_string(value: Box<dyn Any>) {
    if let Ok(s) = value.downcast::<String>() {
        println!("string: {s}");
    }
}
```

## 参考

- [反射 Any](../../common-traits/any.md)
