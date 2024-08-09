# mem::size_of() 与 mem::size_of_val() 函数

它们用于获取对象的内存大小.

差别在于:

- size_of::<T>(), 获取指定类型的内存大小
- size_of_val(val), 获取某个值的内存大小

它们的函数接口如下:

```rust, no_run
pub const fn size_of<T>() -> usize;
pub fn size_of_val<T>(val: &T) -> usize where T: ?Sized;
```

其用法可以参看下面的代码片段:

```rust
{{#include assets/size-of.rs:5:}}
```

对应的 C 代码如下:

```C
{{#include assets/size-of.c:5:}}
```

## 常见类型的内存大小

基础数据类型占用的内存大小, 如下表所示:

| T         | size_of::<T>      | C 语言中对应的类型                    |
|-----------|-------------------|-------------------------------|
| ()        | 0                 | void, 它是 zero sized type, ZST |
| bool      | 1                 |                               |
| u8        | 1                 | unisigned char                |
| i8        | 1                 | signed char                   |
| u16       | 2                 | unsigned short                |
| i16       | 2                 | short                         |
| u32       | 4                 | unsigned int                  |
| i32       | 4                 | int                           |
| u64       | 8                 | unsigned long                 |
| i64       | 8                 | long                          |
| usize     | 8                 | size_t                        |
| isize     | 8                 | isize_t                       |
| u128      | 16                | -                             |
| i128      | 16                | -                             |
| char      | 4                 | -                             |
| [T; N ]   | N * siz_of::<T>() | T[N]                          |
| &T        | 8                 | -                             |
| &mut T    | 8                 | -                             |
| *const T  | 8                 | const T*                      |
| *mut T    | 8                 | T*                            |
| Box<T>    | 8                 | -                             |
| dyn Trait | 16                | -                             |

备注: 以上表格中的数据来自于 64 位的操作系统, 比如 x86_64, aarch64 或者 riscv64.

- 结构体的内存大小, 参考 [结构体的内存布局](../structs/layout.md)
- enum 枚举的内存大小, 参考 [枚举的内存布局](../enums/layout.md)
- union 联合体的内存大小, 参考 [联合体的内存布局](../unions/layout.md)