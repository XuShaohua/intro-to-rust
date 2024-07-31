# 消息传递 message passing

对于并发编程, 线程间共享状态, 主要的模式有两种:

- 基于消息传递 (message-passing concurrency), 完全不共享, 编程模型比较简单, 有不错的并发效率
- 基于共享内存 (shared-memory concurrency), 共享可变更状态 (shared mutable state), 而这需要某种同步机制来居间协调
    - 基于锁的共享 (lock-based concurrency), 比较简单, 并发成本较高, 效率较低
    - 无锁并发模式 (lock-free concurrency), 比较复杂, 并发效率高

本章主要介绍消息传递, 后面的章节陆续介绍基于共享内存的并发.
