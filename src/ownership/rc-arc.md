# 使用 Rc 与 Arc 共享所有权

引用计数指针, 其包含的值都被分配在了堆内存上, 类似于 Box 指针这样的.
除此之外, 在堆内存的头部, 还存放着被引用的次数(reference counting), 这个是 Box 没有的.

## 参考

- [Rc<T>](../smart-pointers/rc/index.md)
- [Arc<T>](../concurrency/arc/index.md)