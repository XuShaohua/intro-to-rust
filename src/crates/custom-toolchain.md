## 指定使用特定的工具链 Custom Toolchain

## 安装不稳定版 (nightly) 工具链

默认情问下, rustup 安装的是稳定版 (stable) 的工具链, 为了使用最新的特性, 我们通常
还会使用不稳定版 (nightly) 的工具链, 可以使用 rustup 来安装:

```bash
rustup toolchain add nightly
```

## 安装特定版本的工具链

也可以安装指定版本的工具链, 某些库会设置最小兼容的版本号(msrv, Minimum Supported Rust Version),
可以安装这个版本的工具链, 来测试它是否真的兼容指定的 msrv.

```bash
rustup toolchain install 1.72
```

## 为项目指定工具链

可以在项目根目录运行 `rustup show` 命令来查看使用哪个工具链来构建当前项目.

修改工具链的方法如下, 它们的优先级从高到低依次是:

1. 工具链速记法, 比如说 `cargo +nightly build` 就可以使用 nightly 版的工具链来构建本项目
2. 使用 `RUSTUP_TOOLCHAIN=nightly cargo build` 这样的环境变量, 来指定要使用的工具链
3. 在项目根目录中运行 `rustup override set nightly`, 就可以强制指定用 nightly 版的工具链来构建当前项目,
   该选项会被写入到 `~/.rustup/settings.toml` 文件中
4. 在项目根目录创建 `rust-toolchain` 文件, 并在里面写入 `nightly`, 这个文件可以被作为配置文件合并到源代码目录中,
   当在另一个环境中构建该项目时, 仍然可以重用这个配置
5. 当前用户的默认工具链, 可以用 `rustup default` 来查看, 也可以使用该命令来设置默认的工具链,
   比如 `rustup default nightly`
