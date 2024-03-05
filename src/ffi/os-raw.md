
# os::raw

`std::os::raw` 模块定义了一些能与C语言兼容的基础数据类型, 这个模块是对 `core::ffi` 模块的封装.
详细的类型对比见下表:

| C 中的类型                 | os::raw 中对应的类型 |
|------------------------| --- |
| void                   | c_void |
| char                   | c_char |
| signed char            | c_schar|
| unsigned char          | c_uchar |
| float                  | c_float |
| double                 | c_double |
| short, signed sort     | c_short |
| unsigned short         | c_ushort | 
| int, signed int        | c_int |
| unsigned, unsigned int | c_uint |
| long                   | c_long |
| unsigned long | c_ulong |
| long long              | c_longlong |
| unsigned long long | c_ulonglong |

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