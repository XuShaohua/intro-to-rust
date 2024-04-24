# thiserror 库

这个库用于快速给结构体或者枚举实现 `Error` trait.

使用方法极为简单:

```rust, ignore
{{#include assets/data_store_error.rs }}
```

它会根据宏定义, 自动为结构体实现 `Display` trait, 它们跟让文介绍的手写的错误类型是兼容的, 可以
随时进行互相替换.

## 参考

- [thiserror document](https://docs.rs/thiserror/latest/thiserror/)