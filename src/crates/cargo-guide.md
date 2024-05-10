# Cargo 基础

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
