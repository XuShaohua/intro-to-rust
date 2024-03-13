# 自定义错误类型

如果错误原因比较多的话, 通常可以自定义一个错误类型:

```rust, not_run
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

impl Error {
    #[must_use]
    pub fn new(kind: ErrorKind, message: &str) -> Self {
        Self {
            kind,
            message: message.to_owned(),
        }
    }

    #[must_use]
    pub const fn from_string(kind: ErrorKind, message: String) -> Self {
        Self { kind, message }
    }

    #[must_use]
    pub const fn kind(&self) -> ErrorKind {
        self.kind
    }

    #[must_use]
    pub fn message(&self) -> &str {
        &self.message
    }
}

impl From<io::Error> for Error {
    fn from(err: io::Error) -> Self {
        Self::from_string(ErrorKind::IoError, err.to_string())
    }
}

impl From<image::ImageError> for Error {
    fn from(err: image::ImageError) -> Self {
        Self::from_string(ErrorKind::IoError, err.to_string())
    }
}

impl From<r2d2::Error> for Error {
    fn from(err: r2d2::Error) -> Self {
        Self::from_string(ErrorKind::DbConnError, format!("r2d2 err: {err}"))
    }
}

impl From<AuthError> for Error {
    fn from(err: AuthError) -> Self {
        Self::from_string(ErrorKind::AuthFailed, format!("auth err: {err:?}"))
    }
}

...
...
```

可以看到, 如果自定义一个 Error 类型, 用来聚合常用的错误, 手动编写这样的代码是很繁琐的, 可以考虑
使用第三方库, 我们下一节会介绍 `thiserror` 库.