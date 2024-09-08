# 接口 Traits

trait 在 Rust 语言中是一个很重要的概念. 它用于为不同的类型约定一组必须实现的函数接口.
包括基础数据类型, 结构体, 枚举等, 甚至还没有实现的结构体. 它与之前介绍的结构体/枚举等相比:
- 结构体/枚举/联合体, 用于定义对象在内存中的内容
- 而 trait 则用于定义对这些内存数据的操作, 或者称作对象的行为

trait 是 Rust 实现多态 polymorphism 的手段之一, 另一种方法是泛型 generics, 我们会在后面的章节进行介绍.

它看起来类似于 Java 里面的接口 interface, 或者 C++ 里面的抽像基类 abstract base class.

比如常用的 `Write trait`, 里面要求的 `write()` 函数, 不管是向 File 或者 TcpStream 或者
String Buffer, 都可以调用一致的接口进行数据写入.
