
# FFI
实际上, 不可能所有的程序以及库都由 Rust 编写, 但有时又想在 Rust 代码里直接调用这些外部库.
比如, 访问操作系统的 syscall, 它们通常都是C函数声明的; 或者调用 opencv 这个视觉库; 或者 mkl 
进行矩阵操作.

Rust 提供的 FFI (foreign function interface) 可以在 Rust 代码里访问外部库里的 C 函数, 以及
问分的 C++ 函数.

比如 [libc](https://crates.io/crates/libc) 这个 crate 就是对 C 标准库进行的绑定, 它在
Rust 的标准库内部有广泛的使用.

## 参考
- [FFI in nomicon](https://doc.rust-lang.org/nomicon/ffi.html)
- [Rust for C++ programmers](https://github.com/nrc/r4cppp)
