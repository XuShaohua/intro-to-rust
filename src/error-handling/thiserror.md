# thiserror 库

这个库用于快速给结构体或者枚举实现 `Error` trait.

使用方法极为简单:

```rust
use thiserror::Error;

#[derive(Error, Debug)]
pub enum DataStoreError {
    #[error("data store disconnected")]
    Disconnect(#[from] io::Error),
    #[error("the data for key `{0}` is not available")]
    Redaction(String),
    #[error("invalid header (expected {expected:?}, found {found:?})")]
    InvalidHeader {
        expected: String,
        found: String,
    },
    #[error("unknown data store error")]
    Unknown,
}
```

它会根据宏定义, 自动为结构体实现 `Display` trait, 它们跟让文介绍的手写的错误类型是兼容的, 可以
随时进行互相的替换.

## 参考

- [thiserror document](https://docs.rs/thiserror/latest/thiserror/)