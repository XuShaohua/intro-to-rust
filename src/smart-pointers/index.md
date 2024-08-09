# 智能指针 Smart pointers

智能指针的概念, 源自于 C++ 语言.
C++ 不支持垃圾回收 (garbage collection), 在引入智能指针之前, 需要开发者手动管理内存的分配与回收.

后来的 C++11 中, 强化了智能指针的概念, 并引入了 `std::shared_ptr` 和 `std::unique_ptr`,
使用这种方式, 极大地简化了对堆内存的管理. 并将 RAII 这种机制推广到管理一般的资源, 比如文件句柄, socket,
数据库连接等等.

所谓的 RAII 机制, 就是使用栈上的对象来管理堆上内存的生命周期的方法. 即在出栈时
会调用这个对象的 destructor 方法, 来释放对应的堆内存.

Rust 也同样不支持垃圾回收, 很多对象的创建与销毁都可以在编译期间确定; 但有时这样的方式不够灵活, 需要
在程序运行期间动态地管理资源. Rust 语言引入了 RAII 机制, 并在标准库的很多地方都有使用. 同样地,
在 Rust 的标准库中, 也有对应的智能智针, 而且种类更加丰富

- `std::unique_ptr`, 不能共享 heap 上的内存, 对应于 `std::boxed::Box`
- `std::shared_ptr`, 以引用计数的方式共享 heap 上的内存, 它本身是线程安全的. 对应于 `std::rc::Rc` (只用于同一线程,
  不是线程安全的) 以及 `std::sync::Arc` (用于线程间共享, 线程安全)
- `std::weak_ptr`, 不以引用计数的方式共享内存, 对应于 `std::rc::Weak` 以及 std::sync::Weak`. 它用于辅助 `std::
  shared_ptr` 以解决循环引用问题, 本身不会影响引用计数的数值

本章学习目标:

1. 掌握原始指针的用法
2. 掌握常用的几种智能智针
3. 了解写时复制机制

## 参考

- [Rust container cheat sheet](https://docs.google.com/presentation/d/1q-c7UAyrUlM-eZyTo1pd8SZ0qwA_wYxmPZVOQkoDmH4/edit#slide=id.p)