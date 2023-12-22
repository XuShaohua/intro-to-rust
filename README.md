
# 关于
建立 Rust 的知识体系, 理清难点.

[在线浏览](https://rust.biofan.org)

[反馈问题](https://github.com/xushaohua/rust-book)

## 安装依赖
这些记录以 markdown 文件为主, 可以用`mdbook`生成网页, 用cargo来安装它:
```bash
cargo install mdbook mdbook-linkcheck
```

## 构建
运行 `mdbook build` 命令, 会在`book/`目录里生成完整的电子书.

```bash
mdbook build
```

## 开发
在编写文档的同时, mdbook 工具可以检查文件变更, 按需自动更新. `mdbook serve` 命令会启动一个
本地的web服务器.

```bash
mdbook serve
```
