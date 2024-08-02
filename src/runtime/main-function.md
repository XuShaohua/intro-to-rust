# main() 函数

一个crate 包含一个 `main()` 函数时, 它可以被编译成可执行文件.

`main()` 函数作为用户编写的代码入口, 它有好几条限制.

它不接受任何参数. 这个跟 c/c++ 程序里的 main() 函数很不一样, 因为后者会接收 `(int argc, char** argv)`.
在 rust 中, 如果需要读取程序启动时的命令行参数, 可以通过 `std::env::Args` 来访问

中不绑定生命周期(lifetime bounds); 也不绑定 trait, 不能有 `where` 语句.
因为调用 main() 函数的过程是固定的, 传入的参数也都是固定的.

它的返回值默认为空 `()`, 而 c/c++ 程序要返回 `int`, 确切来说, 是返回 `-128..=127` 之间的整数.
但在 rust 中比较灵活, 它真正的返回值类型是 `std::process::Termination` trait:

```rust, ignore
pub trait Termination {
    // Required method
    fn report(self) -> ExitCode;
}
```

而 `struct ExitCode` 又实现了 `to_i32()` 方法, 用于返回一个 `i32` 整数:
```rust, ignore
impl ExitCode {
    #[inline]
    pub fn to_i32(self) -> i32 {
        self.0.as_i32()
    }
}
```

在标准库中, 为以下几种类型实现了 `Termination` trait:
- `()`, 它返回的是 `ExitCode::SUCCESS`
- `!`, never type, 表示函数没有返回值, 进程直接退出
  - 比如 `std::process::exit()` 函数声名是: `pub fn exit(code: i32) -> !`
  - 它不会调用任何线程上的任何对象的析构函数, 而是直接退出进程; 并将 exit code 返回给父进程
  - 这个类似于调用了内核的系统调用接口 `exit_group(0)`
- `ExitCode`
- `impl<T: Termination, E: Debug> Termination for Result<T, E>`, 所以 main() 是可以返回一个 `Reuslt<T, E>` 的

比如, 下面的一个例子:
```rust
{{#include assets/read-passwd.rs:5: }}
```

## 参考
- [Crates and source files](https://doc.rust-lang.org/reference/crates-and-source-files.html#main-functions)
