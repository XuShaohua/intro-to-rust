# 其它字符串类型

有时并不需要保证是有效的 UTF-8 编码的字符串:

- `std::ffi::CString`或者 `&CStr` 表示C语言中以 null 结尾的字符串
- `OsString` 或者 `&OsStr` 用来处理命令行参数或者环境变量
- `std::path::PathBuf` 或者 `&Path` 表示文件路径
- `Vec<u8>` 或者 `&[u8]` 用于二进制的数据

## 字符串之间的转换

## 参考

- [Rust String Conversions : Sheet1](https://docs.google.com/spreadsheets/d/19vSPL6z2d50JlyzwxariaYD6EU2QQUQqIDOGbiGQC7Y/pubhtml?gid=0&single=true)