
# Cargo 配置

## 自动补全
默认情况下, `cargo` 命令并不会补全输入的子命令, 但是 Rust 工具链提供了 bash 补全
配置脚本, 我们只需要引入它即可. 以 nightly 版本为例, 可以在 `~/.bashrc` 文件中
加入以下内容:

```shell
if [ -f ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/etc/bash_completion.d/cargo ]; then
  source ~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/etc/bash_completion.d/cargo
fi
```

## 编译相关的常用配置
```toml
[profile.bench]
opt-level = 3
debug = false
rpath = false
lto = true
debug-assertions = false
codegen-units = 1

[profile.release]
opt-level = 3
debug = false
rpath = false
lto = true
debug-assertions = false
codegen-units = 1
```

参考:
- https://github.com/rust-lang/cargo/issues/5596
- https://github.com/rust-lang/cargo/issues/6645
- https://github.com/rust-lang/cargo/issues/7206
