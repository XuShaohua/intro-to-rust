# futures 库

futures 库的功能可以大致分成两个部分:

- Executor/Context/Waker 等组成基本的 async 运行时
- 对标准库模块的异步实现, 比如 io, lock, channel, iter 等