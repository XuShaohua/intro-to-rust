
# Rustup
rustup 用于管理 Rust 工具链, 类似于用于管理 Node 环境的 [nvm][nvm] 以及用于管理
Python 环境的 [pyenv][pyenv].

## 安装
最简单的, 使用 rustup 官方的安装脚本. 要注意的是, 默认情况下该脚本会从官网下载
Rust 工具链, 大陆用户直接访问它们会非常慢, 可以考虑使用中科大的镜像源来加速,
使用方法也很简单, 只需要先在终端里定义两个环境变量即可:
```shell
$ export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
$ export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
```

之后在该终端里运行以下指令:
```shell
$ curl https://sh.rustup.rs | bash
```
当下载完脚本后便会自动运行它, 在终端里一路回车即可.
默认情况下, rustup 会安装最新的稳定版 (stable), 安装的目录是 `~/.rustup`, 使用的
cargo 目录是 `~/.cargo`.

安装完之后, 在终端里运行 `rustc --version` 查看一下版本号, 如果该命令有输出, 则
表明已经正常安装了 Rust 工具链.

为了之后方便使用中科大等第三方镜像源, 我们可以将以上的环境变量追加到 `~/.bashrc` 里.

## 更新
每天更新 Rust 工具链是个好习惯, 更新方法也很简单:
```shell
$ rustup update
```
如果有可用更新的话它就会自动下载了.

有时我们也需要更新 rustup 工具本身, 此时需要用到另一个命令:
```shell
$ rustup self update
```

## 自动补全
rustup 命令可以生成 `bash` 环境的自动补全脚本:
```shell
$ mkdir ~/.local/share/bash_completion.d
$ rustup completions bash > ~/.local/share/bash_completion.d/rustup
$ source ~/.local/share/bash_completion.d/rustup
```

这样就可以生成命令补全脚本并载入到当前 bash 环境了. 当然也可以在初始化 bash 时
自动载入它, 只需要在 `~/.bashrc` 文件中加入以下代码即可:
```shell
# Load rustup completion script
if [ -f ~/.local/share/bash_completion.d/rustup ]; then
	. ~/.local/share/bash_completion.d/rustup
fi
```

## 安装 nightly 工具链
默认情问下, rustup 安装的是稳定版 (stable) 的工具链, 为了使用最新的特性, 我们通常
还会使用每日构建版 (nightly) 的工具链, 可以使用 rustup 来安装:

```shell
$ rustup toolchain add nightly
```

## 指定使用特定的工具链
可以在项目根目录运行 `rustup show` 命令来查看使用哪个工具链来构建当前项目.

修改工具链的方法如下, 它们的优先级从高到低依次是:
1. 工具链速记法, 比如说 `cargo +nightly build` 就可以使用 nightly 版的工具链来构建本项目.
2. 使用 `RUSTUP_TOOLCHAIN=nightly cargo build` 这样的环境变量, 来指定要使用的工具链.
3. 在项目根目录中运行 `rustup override set nightly`, 就可以强制指定用 nightly 版的
工具链来构建当前项目, 该选项会被写入到 `~/.rustup/settings.toml` 文件中.
4. 在项目根目录创建 `rust-toolchain` 文件, 并在里面写入 `nightly`, 这个文件可以
被作为配置文件合并到源代码目录中, 当在另一个环境中构建该项目时, 仍然可以重用这个配置.
5. 当前用户的默认工具链, 可以用 `rustup default` 来查看, 也可以使用该命令来设置默认的
工具链, 比如 `rustup default nightly`.

## 参考
- https://rust-lang.github.io/rustup

[rustup]: https://github.com/rust-lang/rustup
[rustup-website]: https://rustup.rs/
[nvm]: https://github.com/nvm-sh/nvm
[pyenv]: https://github.com/pyenv/pyenv
