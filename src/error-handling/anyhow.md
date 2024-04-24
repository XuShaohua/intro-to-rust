# anyhow

上一节讲到的 `thiserror` 库, 比较适合应用在自定义的库中; 这节介绍的 `anyhow` 更适合用在最终发布的可执行程序里.

## Error

这个库里提供的 `anyhow::Error` trait, 用于简化动态的错误类型, 它类似于 `Box<dyn std::error::Error>`,
但有以下的区别:

- `anyhow::Error` 要求错误实现了 `Send + Sync + 'static`
- `anyhow::Error` 要求实现代码回溯(backtrace)
- `anyhow::Error`表示一个瘦指针(narrow pointer), 只需要占用一个 word size;
  而胖指针(fat pointer) 需要占两个 word size

## Result

`anyhow::Result<T>` 类似于标准库里定义的 `std::io::Result<T>`.
要注意的是, `Result<T, E>?` 将错误类型转换为 `anyhow::Error`时, 会丢去一部分类型信息,
需要用 `downcast()` 等方法才能访问被包装在内部的错误内型;
如果需要对不同的错误类型单独处理时, 应该考虑用 `thiserror` 库.

`anyhow::Result::context()` 方法, 可以给错误对象添加上下文描述信息.
比如文件无法访问时, 可以打印出文件路径:

```rust, ignore
let content = fs::read(path)
  .with_context(|| format!("Failed to read instrs from {}", path.display()))?;
```

## Chain

`anyhow::Chain` 用于在一个位置处理所有的错误, 它本身实现了迭代器 Iterator 接口.

## 参考

- [anyhow document](https://docs.rs/anyhow/latest/anyhow/)