# 智能指针 Smart pointers

## C++ 中的智能指针对比

所谓的 RAII 机制, 就是使用栈上的对象来管理堆上内存的生命周期的方法. 即在出栈时
会调用这个对象的 destructor 方法, 来释放对应的堆内存.

* `std::unique_ptr`, 不能共享 heap 上的内存, 对应于 `std::boxed::Box`
* `std::shared_ptr`, 以引用计数的方式共享 heap 上的内存, 它本身是线程安全的. 对应于 `std::rc::Rc` (只用于同一线程,
  不是线程安全的) 以及 `std::sync::Arc` (用于线程间共享, 线程安全)
* `std::weak_ptr`, 不以引用计数的方式共享内存, 对应于 `std::rc::Weak` 以及 std::sync::Weak`. 它用于辅助 `std::
  shared_ptr` 以解决循环引用问题, 本身不会影响引用计数的数值.
