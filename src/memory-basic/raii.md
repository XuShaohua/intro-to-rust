# RAII

RAII是 `Resource Acquisition Is Initialization` 的缩写, 最初来自于 C++.

一句话概括就是, 将资源(包括堆内存, 文件句柄, socket, 锁, 数据库连接等等)的管理与对象的生命周期绑定.

利用在栈上创建的局部变量的自动析构来保证它管理的资源一定被释放.

## 标准库中的 File 类

```rust, no_run
```

## 参考
- [RAII](https://en.cppreference.com/w/cpp/language/raii)
