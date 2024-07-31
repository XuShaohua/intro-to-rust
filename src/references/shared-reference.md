# 共享引用 Shared References

共享引用又称为只读引用 (Read-only References).

可以使用引用来访问值，同时不影响其生命周期。

- shared reference, `&T`, 同时期内可以有多个这种引用指向同一个值，都是只读的。
  shared references 实现了 `Copy` trait
- mutable reference, `&mut T`，对其引用的值可读可写，同时期内只能有一个可写引用
  指向一个值，Mutable references 没有实现 `Copy` trait

上面的情况是互斥的, 即, 一个对象不能同时有共享引用 (shared references),
也有可变更引用 (mutable reference), 这个 Rust 语言的重要特点.
因为它禁止对 "对象的共享可变更访问" (shared mutable accesses, SMA).

