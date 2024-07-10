# 并发编程模型 concurrency models

根据并发模块之间的通信方式的不同, 可以有两种分类:

- 共享内存
- 消息传递

根据并发模块运行方式的不同, 可以有这种分类:

- 多进程
- 系统级多线程 (os threads), 线程由内核控制
- 事件驱动 (event-driven programming), 与回调 (callback) 相结合, 当事件发生时回调函数被触发
- Coroutines, 与多线程相同,不需要修改编程模型; 与 async 类似, 它们可以支持大量的任务
- actor model, 除了编程语言支持它之外, 例如比较出名的 erlang, 也有不少框架也有实现这种模型, 比如 rust 里的 actix 库
- async/await, 支持基于少数的系统级线程创建大量的任务 (tasks, 有时会被称为用户级线程), 而编写代码的过程与正常的顺序式编程基本一致

要注意的是, rust 并不排斥其它并发模型, 这些模型都有开源的 crate 实现.
接下来几节会对它们单独解释.

## 参考

- [concurrency](https://web.mit.edu/6.005/www/fa14/classes/17-concurrency/)
- [Event-driven programming](https://en.wikipedia.org/wiki/Event-driven_programming)
- [Actor model](https://en.wikipedia.org/wiki/Actor_model)
- [The C11 and C++11 Concurrency Model](https://www.cs.kent.ac.uk/people/staff/mjb211/docs/toc.pdf)
- [Hands-On Concurrency with Rust](https://github.com/packtpublishing/hands-on-concurrency-with-rust)