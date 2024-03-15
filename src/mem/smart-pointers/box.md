# 使用 Box 分配堆内存

`Box<T>` 用于分配堆内存, 并拥有这块内存的所有权.

它在标准库里的定义比较简单:

```rust
/// A pointer type that uniquely owns a heap allocation of type `T`.
pub struct Box<T: ?Sized>(Unique<T>);
```

像链表这样的递归式的数据结构, 就需要用到 `Box<T>` 等方式, 来绕过编译器的报错:

```rust
pub struct LinkedList<T> {
    val: T,
    next: Option<Box<LinkedList<T>>>,
}
```

`Box<T>` 也常用于FFI, 后面的章节会有更详细的介绍.

## Any

`Box<dyn Any>` 可以实现类似 C 语言中的 `void*` 的效果, 可以较为快捷进行向下转型:

```rust
use std::any::Any;

fn print_is_string(value: Box<dyn Any>) {
    if let Ok(s) = value.downcast::<String>() {
        println!("string: {s}");
    }
}
```

## 函数指针

也可以用 `Box<T>` 来包装函数指针:

```rust
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

## 常用方法

```rust
let x = Box::new(42_i32);
let ptr: * mut i32 = Box::into_raw(x);
let x2 = unsafe { Box::from_raw(ptr) };
assert_eq!(*x2, 42);
```

## 相关内容

- [反射 Any](../../common-traits/any.md)