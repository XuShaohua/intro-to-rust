# 静态编译 Static Compilation

rustc 默认使用的是操作系统里的C库, 比如 linux 里的是 glibc; 这个库与当前的系统平台有强绑定,
如果编译的程序链接到了它, 就很难让二进制程序在别的版本的系统上运行.
常见的一个问题就是链接了高版本的 glibc, 然后在低版本上运行失败, 提供版本不匹配.

此时, 可以考虑用静态编译的形式来处理, 可以使用 `musl-libc` 作为静态编译时的 `libc` 库.
musl 库是一个很简洁的 libc 实现, 它不着重于性能, 更关注代码的简洁性和跨平台能力.

在 linux 系统里, 需要安装这两个包:

```bash
sudo apt install musl-dev musl-tools
```

使用 `rustup` 安装 `musl` 的目标:

```bash
rustup target add x86_64-unknown-linux-musl
```

之后, 在编译一个 rust 项目时, 修改生成的目标:

```bash
cargo build --target=x86_64-unknown-linux-musl
```

