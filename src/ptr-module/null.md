# ptr::null() 与 null_mut() 函数

这两个函数用于创建空指针, 它指向的内存地址是 0, 常用它们来初始化或者重置原始指针.

它们的区别是:

- `null()` 用于创建只读的空指针, 即不能通过该指针修改它指向的内存, 返回的是 `*const T` 指针,
  类似于C代码的写法: `const i32* ptr = NULL;`
- `null_mut()` 用于创建可改写的空指针 (mutable pointer), 返回的是 `*mut T` 指针, 类似于C代码的写法: `i32* ptr = NULL;`

```rust
use std::ptr;

fn main() {
    let ptr: *const i32 = ptr::null();
    assert!(ptr.is_null());
}
```

这一组函数常用于 FFI 相关的代码, 比如下面的代码片段, 调用 `mmap(2)` 时, 将 `start_pointer` 设置为空指针,
这样的话 linux 内核会自动选择合适的地址作为内存页的起始地址:

```rust, no_run
{{#include assets/mmap.rs:5:}}
```


