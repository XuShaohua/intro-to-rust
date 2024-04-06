
# Unique
这个类型目前还是 `unstable` 状态, 但它已被标准库大量使用.

`Unique<T>` 是对 `*mut T` 原始指针的包装, 但前者在逻辑上拥有指针指向的对象的所有权.

`Unique` 结构体的定义是:
```rust
#[repr(transparent)]
pub struct Unique<T: ?Sized> {
    pointer: NonNull<T>,
    _marker: PhantomData<T>,
}
```

如果 `T` 实现了 `Send` trait 和 `Sync` trait, 则 `Unique<T>` 也实现它:

```rust
unsafe impl<T: Send + ?Sized> Send for Unique<T> {}
unsafe impl<T: Sync + ?Sized> Sync for Unique<T> {}
```

## 常用方法

- `new()`, `new_unchecked()`, 创建新的 `Unique` 对象
- `as_ptr()` 得到 `*mut T` 指针
- `as_ref()` 得到只读引用
- `as_mut()` 得到可变更引用


```rust
#![feature(ptr_internals)]
use std::ptr::Unique;

let mut x = 1_u32;
let mut ptr = Unique::new(&mut x as *mut u32).expect("Invalid pointer");

unsafe { *ptr.as_ptr() += 1; }
let x_value = unsafe { *ptr.as_ptr() };
assert_eq!(x_value, 2);
assert_eq!(x, 2);

let x_ref = unsafe { ptr.as_mut() };
*x_ref += 1;
assert_eq!(x, 3);
```