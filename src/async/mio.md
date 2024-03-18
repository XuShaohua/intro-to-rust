# mio 库

mio 是一个跨平台的IO库, 它对各个主流平台的非阻塞式 (non-blocking) IO 进行了封装, 并提供了统一的事件通知接口.
它是 tokio 的一个核心依赖库.

| 平台              | 接口     |
|-----------------|--------|
| linux           | epoll  |
| freebsd, mac os | kqueue |
| windows         | IOCP   |

包含的核心功能有:

- 非阻塞式的 TCP, UDP 以及 unix domain socket (UDS) 实现
- 封装了epoll/kqueue/iocp 等事件循环 (event loop)

但是, 跟 [libuv](https://github.com/libuv/libuv) 和 [libevent](https://libevent.org) 等流行的 IO 库相比,
mio 缺少了这些功能:

- 计时器 (timer)
- 线程池
- 非阻塞式的 DNS 查询
- 文件操作 (file operations)
- 信号处理 (signal handling)

## epoll 的一个示例程序

先看一下在C语言里调用 epoll 事件循环的一个小例子:

```C
```

## mio 的一个示例程序

mio 在 linux 平台就是对 epoll 的接口进行的封装.
接下来, 看一下同样的代码逻辑, 用 mio 如何实现:

```rust
```

## mio 核心数据结构

## 参考

- [rust asynchronous io: 从 mio 到 coroutine](https://hexilee.me/2018/12/17/rust-async-io/)
- [Tokio internals: Understanding Rust's asynchronous I/O framework from the bottom up](https://cafbit.com/post/tokio_internals/)