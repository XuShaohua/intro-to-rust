
# Drop trait
类似于 C++ 类里的析构函数(destructor), 当一个值的所有者生命周期结束时, 通过实现
`Drop` trait 来释放内部的资源, 比如在堆上分配的内存, 操作系统的文件句柄, socket 等.

该trait的定义如下:
```rust
pub trait Drop {
  fn drop(&mut self);
}
```

`Drop` trait 被调用的几种情况有:
- 对象越过其了作用域, 该被销毁
- 手动调用 `drop(xx)` 函数
- 清除容器里的元素, 比如 `Vector::clear()` 或者 `Deque::pop()`
- 到达了表达式结尾

大部分情况下, Rust 会自动处理 drop 行为, 但有时要自定义.


## 递归调用 drop

有时, 编译器默认实现的 `Drop` trait, 会以递归的形式被调用, 而 Rust 语言默认的调用栈比较有限,
为此我们可以重新以迭代的方法手动释放资源. 以单链表为例来说明:


```rust
pub struct LinkedList {
  val: i32,
  next: Option<Box<LinkedList>>,
}
```
