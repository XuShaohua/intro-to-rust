# 锁相关的 API

在介绍特定的锁类型之前, 我们先针对它们的公共特性做一些说明.

了解这些之后, 接下来学习各种锁的用法时会更容易.

## 锁的底层接口

- `Lock::acquire()`, 本线程尝试获得锁, 如果获取失败, 本线程将被阻塞, 直到得到锁
- `Lock::try_acquire()`, 本线程尝试获得锁, 如果失败, 就直接返回
- `Lock::release()`, 释放锁

这种底层接口存在的问题是:

- 使用者只有在获得锁之后才能访问被锁保护的资源
- 锁定和解锁要成对使用, 不能出现忘记解锁的情况

## 锁的上层接口

针对上面提到的锁的底层接口存在的问题, 社区总结出了锁的上层接口:

- 锁定和解锁自动匹配
- 锁和它保护的资源紧密关联

这种接口风格来自于 C++ 中的 [RAII](../memory-basic/raii.md) :

- 使用 `LockGuard<T>` 类自动解锁
    - `Lock::acquire()` 函数会返回 `LockGuard<T>` 对象
    - 当 `LockGuard<T>` 对象超出作用域后, 编译器生成的代码自动调用 `Lock::release()` 解锁
- 将锁与它保护的资源关联起来, 通过泛型类 `Lock<T>`, 这样的话只有获得锁之后才能访问被保护的资源

这套接口更加安全易用.


看下面的代码示例:

```rust
{{#include assets/use-mutex.rs:5:}}
```

有两点要重点关注:
1. `let counter: Mutex<i32> = Mutex::new(42);` 这里的 `counter` 是 `Mutex<i32>` 类型,
   这把锁保护的数据类型是 `i32`
2. `if let Ok(guard) = counter.lock()`, `Mutex::lock()` 接口返回的就是 `LockGuard<T>` 类型
    - 当锁定成功后, 就返回 `Ok(lock_guard)`, 这个对象在超出作用域后, 会自动被销毁, 自动解锁
    - 当锁定失败时, 就返回 `Err(lock_failed)`

