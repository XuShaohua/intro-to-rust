# Unique

这个类型目前还是 `unstable` 状态, 但它已被标准库大量使用.

`Unique<T>` 是对 `*mut T` 原始指针的包装, 但前者在逻辑上拥有指针指向的对象的所有权.

`Unique` 结构体的定义是:

```rust, ignore
#[repr(transparent)]
pub struct Unique<T: ?Sized> {
    pointer: NonNull<T>,
    _marker: PhantomData<T>,
}
```

如果 `T` 实现了 `Send` trait 和 `Sync` trait, 则 `Unique<T>` 也实现它:

```rust, ignore
unsafe impl<T: Send + ?Sized> Send for Unique<T> {}
unsafe impl<T: Sync + ?Sized> Sync for Unique<T> {}
```

## 常用方法

- `new()`, `new_unchecked()`, 创建新的 `Unique` 对象
- `as_ptr()` 得到 `*mut T` 指针
- `as_ref()` 得到只读引用
- `as_mut()` 得到可变更引用

```rust, compile_fail
{{#include assets/use-unique.rs:5: }}
```