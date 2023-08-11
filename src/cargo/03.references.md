
# 包引用

声明一个依赖, 可以有以下几种形式.

最简单的是使用 `crates.io` 库里的 crates, 至少指定名称及版本号:
```toml
[dependencies]
rand = "3.1"
```

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
