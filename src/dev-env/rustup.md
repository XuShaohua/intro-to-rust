# 使用 rustup 安装 Rust 工具链

rustup 用于管理 Rust 工具链, 类似于用于管理 Node 环境的 [nvm](https://github.com/nvm-sh/nvm) 以及用于管理
Python 环境的 [pyenv](https://github.com/pyenv/pyenv).

## 安装 rustup

对于 Windows 平台, 请访问[官网](https://rustup.rs/), 下载 exe 文件, 跟据对话框提示即可安装.

在 linux/macos 平台, 使用 [rustup 官方](https://rustup.rs/)的安装脚本最为方便, 只需要在终端运行以下命令即可.

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

要注意的是, 默认情况下该脚本会从官网下载 Rust 工具链, 大陆用户直接访问它们会非常慢, 可以考虑使用
[中科大的镜像源](https://mirrors.ustc.edu.cn/rust-static)来加速, 使用方法也很简单,
只需要先在终端里定义两个环境变量即可:

```bash
export RUSTUP_DIST_SERVER=https://mirrors.ustc.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.ustc.edu.cn/rust-static/rustup
```

之后在该终端里运行以下指令:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

当下载完脚本后便会自动运行它, 在终端里一路回车即可.
默认情况下, rustup 会安装最新的稳定版 (stable), 安装的目录是 `~/.rustup`, 使用的
cargo 目录是 `~/.cargo`.

为了之后方便使用中科大等第三方镜像源, 我们可以将以上的环境变量追加到 `~/.bashrc` 里.

安装完之后, 在终端里运行 `rustc --version` 查看一下版本号, 如果该命令有输出, 则
表明已经正常安装了 Rust 工具链.

```bash
$ rustc --version
rustc 1.78.0 (9b00956e5 2024-04-29)
```

## 更新 rustup

rustc 通常每六周就发布一个大版本, 有时期间还会发布一些补丁版本.

经常更新 Rust 工具链是个好习惯, 更新方法也很简单:

```bash
rustup update
```

有时我们也需要更新 rustup 工具本身, 此时需要用到另一个命令:

```bash
rustup self update
```

## 配置自动补全 (可选)

rustup 命令可以生成 `bash` 环境的自动补全脚本:

```bash
mkdir ~/.local/share/bash_completion.d
rustup completions bash > ~/.local/share/bash_completion.d/rustup
source ~/.local/share/bash_completion.d/rustup
```

这样就可以生成命令补全脚本并载入到当前 bash 环境了. 当然也可以在初始化 bash 时
自动载入它, 只需要在 `~/.bashrc` 文件中加入以下代码即可:

```bash
# Load rustup completion script
if [ -f ~/.local/share/bash_completion.d/rustup ]; then
	. ~/.local/share/bash_completion.d/rustup
fi
```