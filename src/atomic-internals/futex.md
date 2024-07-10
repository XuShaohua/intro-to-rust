# 在用户空间实现的快速锁 futex

futex 是 fast user-space mutex 的缩写, 这个是 linux 内核实现的系统级的互斥锁.
Rust 标准库里的 `Mutex`, 在 linux 系统就是基于它构建的, 这个琐比较有特点, 我们单独拿出来介绍一下.