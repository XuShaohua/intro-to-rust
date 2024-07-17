# 所有权 Ownership

根据之前 [对谷歌开发者的统计][Rust-fact], Rust 语言中有三大难点:

- 宏 Macros
- 所有权与借用 Ownership and borrowing
- 异步编程 Async programming

接下来的三个章节将尝试着从多个方面介绍 Rust 的所有权及生命周期相关的知识.

[Rust-fact]: https://opensource.googleblog.com/2023/06/rust-fact-vs-fiction-5-insights-from-googles-rust-journey
-2022.html

本章的学习目标:

- 理解所有权的概念
- 温习 C++ 中的移动语义
- 掌握 Rust 中的移动语义
- 了解 Clone 和 Copy
- 了解共享所有权, Rc 和 Arc
- 了解引用
