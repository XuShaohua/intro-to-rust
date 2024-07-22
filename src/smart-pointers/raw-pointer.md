# 原始指针 raw pointer

## const pointer

`*const T`

`*const ()` 对应于C语言中的 `const void*`, 可以代表指向任意类型的指针, 使用时需要显式地转型.

## mutable pointer

`*mut T`

## 原始指针的内存布局

## 模拟 C++ 中的 const_cast::<T>

前文有介绍过, Rust 中声明的变量默认都是只读的, 除非显式地声明为 `mut`, 比如 `let mut x = 42;`.
但有时候, 可能需要实现像 C++ 中的 `const_cast()` 那样的类型转换工作, 以方便在函数内部修改一个不可变变量的值.

以下代码片段演示了如何通过原始指针进行类型转换的操作:

```rust
{{#include assets/const-cast.rs:5:}}
```

上面的示例中, 通过取得只读变量 `x` 的内存地址, 直接将新的值写入到该地址, 就可以强制修改它的值.