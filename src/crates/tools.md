# 工具

## Compiler Explorer

[Compiler Explorer](https://rust.godbolt.org/), 在线查看 Rust 中间代码及汇编等.

它的优点很多:

- 它支持切换到所有版本的 rustc, 对比它们的输出结果, 甚至还支持 rust-lang 仓库的 master 分支
- 它支持 gccrs
- 支持很多的 rustc 选项, 比如 `--target aarch64-unknown-linux-musl`, `--target x86_64-unknown-linux-musl`
- 它生成的汇编代码也有代码高亮, 方便阅读
- 它支持在 Intel 汇编与 AT&T 汇编之间转换
- 支持在源代码中一键定位到生成的汇编以及 MIR
- 鼠标悬在汇编指令上后, 就会显示该指令的帮助手册, 方便快速学习汇编指令

## Rust Playground

[Rust Playground](https://play.rust-lang.org) 可以很方便地调用各种 rustc 的选项, 也可以
切换不稳定版本, 对比它们的输出. 它也很方便用于在线共享代码片段并调试.

## cargo-show-asm

通常我们可以用 `rustc --emit asm /path/to/file.rs` 来编译生成汇编代码, 但此种方法会生成所有的代码,
阅读起来不算方便. 而 [cargo-show-asm](https://github.com/pacak/cargo-show-asm) 工具
可以很方便地帮我们整理生成的汇编代码, 只打印我们感兴趣的函数.

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

[cargo-edit](https://github.com/killercup/cargo-edit) 为 `cargo` 添加 `add`, `rm` 以及 `upgrade` 等命令,
而不用手动编辑 `Cargo.toml` 文件.

比如 `cargo add serde`, `cargo rm serde_json`, 使用起来比较方面.

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
