# mem::transmute() 函数

这个函数用于将一个值从当前类型转换成另一种类型. 类似于C语言中的强制类型转换.
要注意的是, 源类型与目标类型应该大小相同.

```rust
{{#include assets/mem-transmute.rs:5: }}
```

相同的功能, 用C语言实现:

```C
{{#include assets/mem-transmute.c:5: }}
```

## 其它转换方式

- [Casting](../../primitives/cast.md)
- [From/Into](../../common-traits/from-into.md)
- [TryFrom/TryInto](../../common-traits/try-from-try-into.md)
