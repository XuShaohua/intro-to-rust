# `Box<T>` 类

`Box<T>` 用于分配堆内存, 并拥有这块内存的所有权.

它在标准库里的定义比较简单:

```rust, ignore
/// A pointer type that uniquely owns a heap allocation of type `T`.
pub struct Box<T: ?Sized>(Unique<T>);
```

`Box<T>` 也常用于FFI, 后面的章节会有更详细的介绍.

## `Box<T>` 与 `&T` 之间的关系

Deref

## 函数指针

也可以用 `Box<T>` 来包装函数指针:

```rust, ignore
impl<Args: Tuple, F: FnOnce<Args> + ?Sized, A: Allocator> FnOnce<Args> for Box<F, A> {
    type Output = <F as FnOnce<Args>>::Output;

    extern "rust-call" fn call_once(self, args: Args) -> Self::Output {
        <F as FnOnce<Args>>::call_once(*self, args)
    }
}

impl<Args: Tuple, F: FnMut<Args> + ?Sized, A: Allocator> FnMut<Args> for Box<F, A> {
    extern "rust-call" fn call_mut(&mut self, args: Args) -> Self::Output {
        <F as FnMut<Args>>::call_mut(self, args)
    }
}

impl<Args: Tuple, F: Fn<Args> + ?Sized, A: Allocator> Fn<Args> for Box<F, A> {
    extern "rust-call" fn call(&self, args: Args) -> Self::Output {
        <F as Fn<Args>>::call(self, args)
    }
}
```