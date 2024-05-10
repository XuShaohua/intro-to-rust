# Rust 语言入门 Introduction to Rust

本文档使用大量的图片和代码片段, 尝试帮助阅读者建立 Rust 的知识体系, 理清难点.

[在线浏览](https://rust.biofan.org)

[下载 pdf 文件](https://share.biofan.org/intro-to-rust.pdf)

## 反馈问题

欢迎[反馈问题](https://github.com/xushaohua/intro-to-rust/issues), 或者提交 PR.

## 搭建本地环境

想在本地搭建本文档的环境也是很容易的.

这些文档记录以 markdown 文件为主, 用 [mdbook](https://github.com/rust-lang/mdBook) 生成网页.

用cargo来安装它: `cargo install mdbook mdbook-linkcheck`

运行 `mdbook build` 命令, 会在`book/`目录里生成完整的电子书的网页版本.

在编写文档的同时, mdbook 工具可以检查文件变更, 按需自动更新.
使用 `mdbook serve` 命令启动一个本地的 web 服务器, 在浏览器中打开 [http://localhost:3000](http://localhost:3000).

### 生成 PDF

如果想生成 pdf, 需要安装 [mdbook-pandoc](https://github.com/max-heller/mdbook-pandoc),
用命令: `cargo install mdbook-pandoc`

并且安装 latex 相应的包:

```bash
sudo apt install pandoc librsvg2-bin texlive-latex-recommended latex-cjk-all texlive-xetex
```

安装好依赖之后, 运行 `mdbook build` 命令, 就会生成 `book/pandoc/pdf/intro-to-rust.pdf` 文件.

