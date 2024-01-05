
# Error

`Error` trait 用来表示一个 error 值, 通常用于 `Result<T, E>` 中的 `E`.

`Error` trait 的定义如下:
```rust
pub trait Error: Debug + Display {
    fn source(&self) -> Option<&(dyn Error + 'static)> { ... }
    // Deprecated
    fn description(&self) -> &str { ... }
    // Deprecated
    fn cause(&self) -> Option<&dyn Error> { ... }
    fn provide<'a>(&'a self, request: &mut Request<'a>) { ... }
}
```

可以看到 `Error` 继承自 `Debug + Display` trait.

## ParseIntError
当尝试把字符串转换成整数时, 标准库使用 `ParseIntError`来记录错误原因.

```rust
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct ParseIntError {
    pub(super) kind: IntErrorKind,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum IntErrorKind {
    Empty,
    InvalidDigit,
    PosOverflow,
    NegOverflow,
    Zero,
}

impl Error for ParseIntError {
    #[allow(deprecated)]
    fn description(&self) -> &str {
        match self.kind {
            IntErrorKind::Empty => "cannot parse integer from empty string",
            IntErrorKind::InvalidDigit => "invalid digit found in string",
            IntErrorKind::PosOverflow => "number too large to fit in target type",
            IntErrorKind::NegOverflow => "number too small to fit in target type",
            IntErrorKind::Zero => "number would be zero for non-zero type",
        }
    }
}
```

## 自定义错误类型

如果错误原因比较多的话, 通常可以自定义一个错误类型:

```rust
#[derive(Debug, Clone, Copy, PartialEq, Eq, Serialize)]
pub enum ErrorKind {
    ConfigError,
    JwtError,
    InvalidToken,

    CalibreError,

    DbConnError,
    DbGeneralError,
    DbUniqueViolationError,
    DbForeignKeyViolationError,
    DbNotFoundError,

    IoError,
    JsonError,
    RingError,
    AuthFailed,
    ActixBlockingError,
    MongoDbError,
    MongoDbValueAccessError,
    HttpError,

    // Invalid form request.
    RequestFormError,
}

#[derive(Debug, Clone, Serialize)]
pub struct Error {
    kind: ErrorKind,
    message: String,
}

impl std::fmt::Display for Error {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "{:?}: {}", self.kind, self.message)
    }
}

impl std::error::Error for Error {}

```
