# mem::transmute() 函数

这个函数用于将一个值从当前类型转换成另一种类型. 类似于C语言中的强制类型转换.
要注意的是, 源类型与目标类型应该大小相同.

```rust
{{#include assets/transmute.rs:5:}}
```

相同的功能, 用C语言实现:

```C
{{#include assets/transmute.c:5:}}
```

## 将枚举转换为 u8

用这个函数也可以将枚举结构中的签标 tag 值转为 u8 或者别的整数类型:

```rust
{{#include assets/transmute-enum.rs:5:}}
```

## 手动构造切片引用

切片引用本身就是一个胖指针:

- data ptr: 指向切片元素的起始内存
- len: 切片中元素的个数

```rust
{{#include assets/transmute-slice.rs:5:}}
```

## 其它转换方式

- [Casting](../primitives/cast.md)
- [From/Into](../common-traits/from-into.md)
- [TryFrom/TryInto](../common-traits/try-from-try-into.md)
