# 声明外部函数以及变量

使用 `extern` 可以声明函数及变量, 它们定义在其它库中. 在编译期间由链接器(linker) 将 rust 代码
与它们这些库链接起来.
这些库可以是静态库, 或者动态库.

举个例子, 声明C库中的 `strlen`, 最终会与 `libc.so` 或者 `libc.a` 链接:

```rust
use std::os::raw::c_char;

extern {
    fn strlen(s: *const c_char) -> usize;
}

extern "C" {
    fn strerror(error_num: i32) -> *const c_char;
}
```

这里, rust 默认 `extern` 代码块使用的是 C 语言的转换方式, 所以 `extern "C"` 可以简写为 `extern`.

如果是外部变量的话, 也是类似做法, 比如 `environ` 保存着进程当前的环境变量列表:

```rust
{{#include assets/print-env.rs:5: }}
```