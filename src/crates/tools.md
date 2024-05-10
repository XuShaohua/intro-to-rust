# 工具

## Compiler Explorer

[Compiler Explorer](https://rust.godbolt.org/), 在线查看 Rust 中间代码及汇编等.

## clippy

[rust-clippy](https://github.com/rust-lang/rust-clippy) 是一个很全面的代码检查工具, 可以配置选项.

它支持的700多条检查规则可以在[官网查看](https://rust-lang.github.io/rust-clippy/master/index.html).

## Evcxr

[Evcxr](https://github.com/evcxr/evcxr), 直接运行 Rust 代码的交互式终端 (REPL).

安装: `cargo install evcxr_repl`.

然后就可以在终端里跟它交互了: `$ evcxr `

同时, 稍加配置, 加入 shebang 后, 可以用这个工具来编写 rust 脚本:

```rust, ignore
{{#include assets/script.rs}}
```

## sccache

类似于 ccache, [sccache](https://github.com/mozilla/sccache) 是一个编译缓存工具, 可以加快编译过程.

## cargo-audit

[cargo audit](https://github.com/rustsec/rustsec) 用于查询当前项目使用的模块是否存在安全
风险, 通过查询 [RustSec](https://rustsec.org/) 官网, 并给出可能的修复方法.

## cargo-edit

[cargo-edit](https://github.com/killercup/cargo-edit) 为 `cargo` 添加 `add`, `rm` 以及
`upgrade` 等命令, 而不用手动编辑 `Cargo.toml` 文件.

## cargo-watch

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
