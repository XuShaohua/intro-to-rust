
# Cargo 入门

## 目录结构

```text
├── benches
├── Cargo.lock
├── Cargo.toml
├── examples
├── src
├── target
└── tests
```

- `tests/` 集成测试
- `benches/` benchmarks 目录
- `examples/` 示例代码
- `src/main.go` 默认的可执行文件
- `src/lib.go` 默认的库文件
- `src/bin/` 可执行文件目录
- `Cargo.toml` 包含了项目信息及依赖
- `Cargo.lock` cargo 自动生成的依赖信息

`src/main.rs` 编译生成的可执行文件名称是项目名称;
如果在 `examples`, `tests`, `benches` 以及 `src/bin` 目录里面有子目录, 里面还有
`main.rs` 以及相关的其它源码文件, 那么该可执行文件的名称与目录名相同.

## 包依赖

如果是rust库, 不需要在源码里包含 `Cargo.lock`, 需要把这个文件加到 `.gitignore`
中. 如果是 rust 可执行文件, 需要包含这个 `Cargo.lock` 在源码中.

在 `Cargo.toml` 中, 加入包依赖可以是这样的:
```toml
[dependencies]
rand = { git = "https://github.com/rust-lang-nursery/rand.git" }
```
会从该 git 仓库下载默认分支的最新代码. 这样可能会导致兼容问题, 为此我们可以指定
依赖特定的 commit.

```toml
[dependencies]
rand = { git = "https://github.com/rust-lang-nursery/rand.git", rev = "9f35b8e" }
```

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

## Cargo Home
```txt
.
├── bin
├── config
├── credentials
├── env
├── git
└── registry
```

- `config` cargo 全局配置文件
- `credentials` cargo login 时生成的本地token
- `bin/` 目录, 包含了 `cargo install` 及 `rustup` 安装到本地的可执行文件
- `env` 环境变量设置
- `git/` 目录包含了以 git 仓库作为依赖(而不是 crates repo)的本地源码缓存
- `registry/` 目录包括了从 crate registries (比如 crates.io) 下载的 crates 源代码目录

如果需要在 CI 中支持包缓存, 只需要将以下目录缓存到本地即可:
- `bin/`
- `registry/index/`
- `registry/cache/`
- `git/db/`

当然了, 也可以使用 `cargo vendor` 下载所有的依赖并存储到项目源码中.
