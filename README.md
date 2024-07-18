# Rust 语言入门 Introduction to Rust

本文档使用大量的图片和代码片段, 尝试帮助阅读者建立 Rust 的知识体系, 理清难点.

[在线浏览](https://rust.biofan.org)

本文档包括以下几个部分的内容:

- 第一部分: 语言基础
- 第二部分: 自定义类型
- 第三部分: 标准库
- 第四部分: 内存管理
- 第五部分: 并发编程
- 第六部分: 异步编程
- 第七部分: 工程实践
- 第八部分: Rust语言的生态

## 反馈问题

本文档到目前为止还没有完成, 中间有不少章节是缺失的, 如果发现错误,
欢迎 [反馈问题](https://github.com/xushaohua/intro-to-rust/issues), 或者提交 PR.

## 搭建本地环境

想在本地搭建本文档的环境也是很容易的, 这些文档记录以 markdown 文件为主, 并使用
[mdbook](https://github.com/rust-lang/mdBook) 生成网页.

1. 用 cargo 来安装它: `cargo install mdbook mdbook-linkcheck`
2. 运行 `mdbook build` 命令, 会在`book/`目录里生成完整的电子书的网页版本
3. 使用 `mdbook serve` 命令监控文件变更, 并启动一个本地的 web 服务器, 在浏览器中打开 [http://localhost:3000](http://localhost:3000)

### 生成 PDF

如果想生成 pdf, 需要安装 [mdbook-pandoc](https://github.com/max-heller/mdbook-pandoc),
通过命令 `cargo install mdbook-pandoc`.

然后安装 latex 相应的包:

```bash
sudo apt install pandoc librsvg2-bin texlive-latex-recommended latex-cjk-all texlive-xetex
```

安装好依赖之后, 运行 `./tools/generate-pdf.sh` 脚本, 就会生成 `book-pandoc/intro-to-rust.pdf`.
