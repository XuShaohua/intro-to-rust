# ptr::copy() 与 ptr::copy_nonoverlapping() 函数

这两个函数都用于将一块内存从 src 拷贝到目的地址.

```rust, ignore
pub const unsafe fn copy<T>(src: *const T, dst: *mut T, count: usize);

pub const unsafe fn copy_nonoverlapping<T>(
    src: *const T,
    dst: *mut T,
    count: usize
);
```

它们的区别在于:

- `copy()` 中的 src 和 dst 是可以有内存重叠的, 类似于 C 语言中的 `memmove()`
- `copy_nonoverlaping()` 中的 src 和 dst 不可以有内存重叠, 类似于 C 语言中的 `memcopy()`

看一个例子:

```rust
{{#include assets/ptr-copy.rs:5: }}
```

对应的 C 语言的实现:

```C
{{#include assets/ptr-copy.c:5: }}
```