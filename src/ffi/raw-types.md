
# 与C语言兼容的基础数据类型

C 语言中定义的一些基础数据类型, 在不同的平台上可能对应着不同的内容大小, 比如 int, 通常占用4个字节,
但有些平台上会占用2个字节; 而 char 类型可能对应着 signed char 或者 unsigned char. (所以,
比较可靠的跨平台C程序通常使用 stdint.h 里定义的基础数据类型, 或者程序内部重新实现一遍, 比如 nginx.)

Rust 标准库提供了一些定义, 以便于与C语言中的类型保持一致, 方便实现 ffi 接口.

## os::raw 模块

`std::os::raw` 模块定义了一些能与C语言兼容的基础数据类型, 这个模块是对 `core::ffi` 模块的封装.
详细的类型对比见下表:

| C 中的类型                 | os::raw 中对应的类型 |
|------------------------|----------------|
| char                   | c_char         |
| signed char            | c_schar        |
| unsigned char          | c_uchar        |
| float                  | c_float        |
| double                 | c_double       |
| short, signed sort     | c_short        |
| unsigned short         | c_ushort       |
| int, signed int        | c_int          |
| unsigned, unsigned int | c_uint         |
| long                   | c_long         |
| unsigned long | c_ulong        |
| long long              | c_longlong     |
| unsigned long long | c_ulonglong    |
| void                   | ()             |
| void * | *mut c_void |
| const void * | *const c_void |

指针类型比较特殊, 在 rust 里被独立处理的.

### 布尔类型
Rust 中的 `bool` 类型与 C 或者 C++ 中的完全一致, 没有额外的转换步骤

### 结构体指针及引用
- C/C++ 中定义的结构体指针 `*T`, 对应于 rust 中的 `*mut T` 
- C++ 中的对象引用 `&T`, 对应于 rust 中的 `*const T`

## 其它类型
`core::ffi` 模块还定义了一些仍在实验中的类型, 我们也介绍一下:

| C 中的类型 | core::ffi 中对应的类型 |
| --- | --- |
| ptrdiff_t | c_ptrdiff_t |
| size_t | c_size_t |
| ssize_t | c_ssize_t |

同时还提供了 `NonZero` 版本的类型:
| C 中的类型                 | core::ffi 中对应的NonZero类型 |
|------------------------| --- |
| char                   | NonZero_c_char |
| signed char            | NonZero_c_schar|
| unsigned char          | NonZero_c_uchar |
| float                  | NonZero_c_float |
| double                 | NonZero_c_double |
| short, signed sort     | NonZero_c_short |
| unsigned short         | NonZero_c_ushort |
| int, signed int        | NonZero_c_int |
| unsigned, unsigned int | NonZero_c_uint |
| long                   | NonZero_c_long |
| unsigned long | NonZero_c_ulong |
| long long              | NonZero_c_longlong |
| unsigned long long | NonZero_c_ulonglong |