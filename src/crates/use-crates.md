# 引用外部库

声明一个外部库的依赖, 可以有以下几种形式.

最简单的是使用 `crates.io` 库里的 crates, 至少指定名称及版本号:

```toml
[dependencies]
rand = "3.1"
```

可以使用 `cargo add rand` 命令, 把 `rand` 库加入到 `Cargo.toml`;
也可以使用文本编辑器手动输入这些内容.

或者一个自定义的 git 仓库:

```toml
[dependencies]
rand = { git = "https://github.com/rust-lang/rand", branch="master" }
```

可以指定 git 仓库的分支名, 版本号, 以及 commit id 等, 可用于定位特定的提交.

也可以是本地的一个路径, 比如将一个大仓库拆成几个小库, 都还放在同一个根目录里:

```toml
[dependencies]
hello_utils = { path = "hello_utils" }
```

`build.rs` 可以使用 `[build-dependencies]` 里定义的依赖.
`examples`, `tests` 以及 `benches` 可以 使用 `[dev-dependencies]` 以及 `[dependencies]`
里定义的依赖.
`src` 目录里的代码, 只能使用 `[dependencies]` 里定义的依赖.

## 更新依赖包

手动更新依赖包到新版本:

```bash
$ cargo update  # 更新所有依赖包
$ cargo update -p rand  # 只更新 rand 包
```

这里, 只会更新 `Cargo.lock`, 根据 `Cargo.toml` 中定义的依赖包的版本, 而不会触动
`Cargo.toml` 本身. 如果需要更新 `Cargo.toml` 依赖里的版本, 要么手动去修改, 要么
使用 `cargo-upgrade` 这个扩展, 自动将它们更新到最新版.

```bash
$ cargo upgrade
```