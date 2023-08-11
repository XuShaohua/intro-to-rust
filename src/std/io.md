# I/O

## Readers and Writers
* `Read` trait, 面向字节的读取接口
* `BufRead` 基于 `Read` trait, 实现了依行读取文本等方法
* `Write` trait, 面向字节及 UTF-8 字符串的写入接口

BufRead 只支持 UTF-8 编码

`FromIterator` trait 可以转换 `Result` trait 所包装的类型.

`Vec<u8>` 实现了 `Write` trait, 这个在 C++ 中称作是`偏特化`. 用于向列表中填入新的数据.

## Path
* String, 是在堆上分配的内存的 str
* OsString, 是在堆上分配的内存的 OsStr
* PathBuf, 是在堆上分配的内存的 Path

对于路径名, 不需要是有效的 Unicode 名, 所以不能直接用 `String`, 因为 `String` 
要求必须是有效的 Unicode. 我们需要使用 `OsStr` 及 `OsString`. `OsStr` 是
Unicode 的超集. 可以用它来表示路径名, 命令行参数, 以及环境变量. 在 Unix 平台,
`OsStr` 可表示任意的字节序.

`Path` 跟 `OsStr` 几乎类似, 只是加了一些方便处理路径的方法.
对于绝对路径及相对路径, 使用 `Path`; 对于路径的一部分, 使用 `OsStr`.
