# 理解 async/await

rustc 编译器遇到 async 函数时, 会在内部生成对应的状态机代码 (state machine), 这个状态机会实现
`Future` trait.

## 参考

- [Understanding Async Await in Rust: From State Machines to Assembly Code](https://eventhelix.com/rust/rust-to-assembly-async-await/)
- [Nested async/await in Rust: Desugaring and assembly](https://eventhelix.com/rust/rust-to-assembly-async-await-nested/)
- [Rust async/await: Async executor](https://eventhelix.com/rust/rust-async-executor/)
