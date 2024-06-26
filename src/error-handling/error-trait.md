# Error trait

标准库里定义了 `Error` trait, 用来表示错误值, 可以用作 `Result<T, E>` 里的 `E`.

它的接口如下:

```rust, ignore
pub trait Error: Debug + Display {
    fn source(&self) -> Option<&(dyn Error + 'static)> { ... }
    fn description(&self) -> &str { ... }
    fn cause(&self) -> Option<&dyn Error> { ... }
    fn provide<'a>(&'a self, request: &mut Request<'a>) { ... }
}
```

可以看到, 它默认就实现了4个方法, 但要求实现 `Debug` 和 `Display` traits. 我们自定义错误类型时,
也应该实现这两个 traits.

接下来看标准库中的一个例子.

## ParseIntError

当尝试把字符串转换成整数时, 标准库使用 `ParseIntError`来记录错误原因.

```rust, no_run
{{#include assets/parse_int_error.rs }}
```