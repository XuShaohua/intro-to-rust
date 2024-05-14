# 第一个 rust 程序 hello world

配置好工具链之后, 开始编写第一个 rust 程序: `hello-world.rs`.

首先, 使用 `cargo` 创建项目:

```bash
cargo new hello-world
```

它会生成 `hello-world` 的项目目录:

```bash
$ tree hello-world/
hello-world/
├── Cargo.lock
├── Cargo.toml
└── src
    └── main.rs

2 directories, 3 files
```

其中:

- `Cargo.toml` 是项目的配置文件, 里面保存项目名称, 版本号, 依赖的库等等
- `src/main.rs` 是默认生成的程序入口

用文本编辑器打开 `src/main.rs`, 可以看到该文件包含了以下内容:

```rust
fn main() {
  println!("Hello, world!");
}
```

然后切换到终端, 执行下面的命令开始编译并运行它:

```bash
cargo run
```

一切正常的话, 就会在终端内输出:

```bash
Hello, world!
```

完成了!

然而, 整个操作并不算很连续:

- 使用文本编辑器也不方便, 没有自动补全, 语法高亮
- 在编译时还要在终端执行, 而且编译出错时又要切回到文本编辑器
- 文本编辑器不支持代码跳转, 重构代码也很繁琐
- ...

可以使用 IDE 来解决以上列出来的部分问题.