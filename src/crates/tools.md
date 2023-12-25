
# 工具

- [Compiler Explorer](https://rust.godbolt.org/), 在线查看 Rust 中间代码及汇编等
- [Evcxr](https://github.com/evcxr/evcxr), 直接运行 Rust 代码的交互式终端 (REPL)
- [sccache](https://github.com/mozilla/sccache), 编译缓存工具, 可以加快编译过程

## Cargo 工具
[cargo watch](https://github.com/watchexec/cargo-watch), 用于监视 cargo 项目的更改,
估然自动执行指定的动作.

比如自动执行 `backend` 可执行文件:
```bash
cargo watch -x 'run --bin backend'
```

或者自动运行 `clippy`:
```bash
cargo watch -x clippy
```

在使用 `cargo watch` 时, 默认会显示很多的 warning 信息, 尤其是在代码重构期间,
可以先禁用 rustc 的 warning:

```bash
RUSTFLAGS=-Awarnings cargo watch
```
