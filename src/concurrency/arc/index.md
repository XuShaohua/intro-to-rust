# Arc<T> 跨线程的引用计数

在线程之间共享同一对象的所有权, 内部使用了原子数来计数.

如果只需要在线程内共享所有权, 可以使用 Rc<T>.