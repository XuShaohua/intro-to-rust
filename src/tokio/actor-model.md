# Actor Model

上面介绍的都是 async/await 异步编程模型, 这一章介绍 Actor Model 并发模型.

这种并发模型是异步的消息传递模式.
[erlang 语言](https://www.erlang.org/) 就是依照该模型实现的, 它也证明了这种模型有着极强的并发能力.

在 Rust 语言中, [actix](https://github.com/actix/actix) 是对该模型的完整实现, 其并发性能也
十分突出.