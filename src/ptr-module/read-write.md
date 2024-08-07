# ptr::read() 与 ptr::write() 函数

这两个函数用于从原始指针读取当前值以及向其写入新的值.
要注意的是, 不管 `T` 有没有实现 `Copy trait`, `read()` 这个操作都可以完成, 因为它是字节级别的拷贝.

```rust, ignore
pub const unsafe fn read<T>(src: *const T) -> T;
pub unsafe fn write<T>(dst: *mut T, src: T);
```

这两个函数是 Rust 操作内存的基础, 像标准库中的 `ptr` 和 `mem` 模块中的函数, 很多都是利用这两个函数实现的.

要使用它们, 需要先满足前置条件, 不然对指针的操作就会出现未定义行为:

- 原始指针必须是有效指针
- 原始指针应该是内存对齐的, 如果没有对齐, 可以考虑 `read_unaligned()` 和 `write_unaligned()` 函数
- 对于 `read(src)`, 原始指针必须指向一个被初始化了的地址

```rust
{{#include assets/read-write.rs:5: }}
```

它类似于下面的C代码:

```C
{{#include assets/read-write.c:5: }}
```
