
# Static Compiling
可以使用 `musl-libc` 作为静态编译时的 `libc` 库.

在 arch 系统里, 需要安装这两个包:
```bash
sudo pacman -S musl kernel-headers-musl
```

使用 `rustup` 安装 `musl` 库:
```bash
rustup target add x86_64-unknown-linux-musl
```

之后, 在编译一个 rust 项目时, 修改生成的目标:
```bash
cargo build --target=x86_64-unknown-linux-musl
```
