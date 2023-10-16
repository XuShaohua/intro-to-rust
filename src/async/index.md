# 异步编程 Asynchronous Programming

多线程并发模型, 会耗费很多的 CPU 和内存资源, 创建以及切换线程的成本也很高; 可以使用线程池来缓解部分问题.

async并发模式可以降低对CPU和内存资源的过度使用, 只需要很少的数个系统级线程就可以创建大量的任务(tasks,
或者称作用户级线程), 每个任务的成本都很便宜. 这些任务可以有数以万计甚至是百万级的.
然后, 因为要带有运行时(runtime), 以及存储大量的状态机, async程序的可执行文件会更大.

Rust 实现的异步式(async)并发编程模型, 有这些特点:

- 以 `Future` 为中心, 当调用 `poll` 时执行程序, 当把 Future 丢弃时就终止程序
- 零开销 (zero-cost), 不需要分配堆内存, 或者使用动态派发 (dynamic dispatch), 这样的话在嵌入式等资源受限的环境里依然可以使用
- 标准库没有自带运行时 (runtime), 它们有社区提供, 目前使用量较多的有 tokio 和 async-std, 后面我们分别有所介绍
- 运行时可以有单线程的, 也可以是多线程的

## 语言与第三方库

使用 Rust 编写 async 程序, 通常多少都会用到一些第三方库, 当然也要用到标准库, 我们这里先列一下它们的关系:

- async/await 语法: 由 rustc 编译器直接支持
- 最基础的 traits, 类型以及函数, 比如 `Future` trait, 是由标准库提供的 (std::future 模块)
- 许多工具类型, 宏定义以及函数, 则由 `futures` 库提供; 它也是个基础库, 可以在所有的异步程序代码里使用
- 运行时(runtime) 用于执行 async 代码, 调度任务, 绑定IO等, 比如 tokio 及 async-std. 大部分异步程序都要依赖一个这样的运行时库

## 参考

- [Rust async book](https://rust-lang.github.io/async-book/)
- [Async Rust Is A Bad Language](https://bitbashing.io/async-rust.html)
- [Common Mistakes with Rust Async](https://www.qovery.com/blog/common-mistakes-with-rust-async/)