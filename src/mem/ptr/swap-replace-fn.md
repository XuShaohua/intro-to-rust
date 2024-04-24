# ptr::swap() 与 ptr::replace() 函数

这两个函数的定义如下:

```rust, ignore
pub unsafe fn swap<T>(x: *mut T, y: *mut T);
pub unsafe fn replace<T>(dst: *mut T, src: T) -> T;
```

- swap() 用于交换两个指针
- replace() 用于交dest 指向 src 对象的地址, 并返回原先的值

使用这两个函数, 要满足必要条件:

- src/dst 要是有效的地址, 可读可写
- src/dst 要被初始化
- src/dst 要内存对齐

看一下示例代码:

```rust
{{#include assets/ptr-swap-replace.rs:5: }}
```