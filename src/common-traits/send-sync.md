
# Send trait 与 Sync trait

`Send` trait 从一个线程移动 (move) 到另一个线程.

`Sync` trait 在线程之间安全地共享引用, 它是基于 `Send` trait 做的扩展.