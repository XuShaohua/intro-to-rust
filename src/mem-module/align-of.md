# mem::align_of() 与 mem::align_of_val() 函数

这一组函数用于获取类型的内存对齐大小.

其差别在于:

- align_of() 获取某个类型的对齐大小
- align_of_val() 获取某个值所属类型的对齐大小

它们的函数接口如下:

```rust, no_run
pub const fn align_of<T>() -> usize;
pub fn align_of_val<T>(val: &T) -> usize where T: ?Sized;
```

下面是一个基本的用例:

```rust
{{#include assets/align-of.rs:5:}}
```

## 参考

- [内存对齐](../memory/memory-alignment.md)
- [Type Layout](https://doc.rust-lang.org/reference/type-layout.html)