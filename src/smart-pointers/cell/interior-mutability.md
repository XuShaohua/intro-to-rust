# 内部可变性 Interior Mutability

对于一个表面上看起来不可变的值, 其内部却包含了可变更的元素.
这个类似于 C++ 类中给某个元素添加了 `mutable` 修饰符.

Rust 引入这个特性, 就是为了解决自身的不足.
默认情况下, 变量都是只读的, 又不允许使用可变更引用 (mutable reference),
为同时只能有一个可变更引用访问该变量. 

- Rust 禁止 shared mutable accesses, SMA.
- 引入内部可变性这种特性, 通过在运行时检查所有权,
  来缓解上述规则的限制带来的语言表达力不足的问题

可以使用 `std::cell::Cell` 及 `std::cell:RefCell` 实现这样的效果.

```rust, ignore
impl<T> Cell<T>
  where T: Copy
{
  pub fn new(t: T) -> Cell<T> {
    ...
  }

  pub fn get(&self) -> T {
    ...
  }

  pub fn set(&self, t: T) {
    ...
  }
}
```

这里可以看到, `Cell::set()` 方法在声明时并不会改变 `self`.

另外, `Cell` 要求 `T` 实现了 `Copy` trait, 而且其 `get()` 和 `set()` 方法都会
复制新的值. 这种限制有几点不足, 第一是频繁的拷贝数据会浪费资源, 第二是有些类型
并不支持拷贝, 比如说文件句柄.

为了解决以上问题, rust 又引入了 `RefCell` 类型.

```rust, ignore
impl<T> RefCell<T>
{
  pub fn new(t: T) -> RefCell<T> {
    ...
  }

  pub fn borrow(&self) -> &T {
    ...
  }

  pub fn borrow_mut(&self) -> &mut T {
    ...
  }
}
```
