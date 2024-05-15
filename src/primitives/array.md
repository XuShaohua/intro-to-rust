# 数组 Array

数组 (array), 用于存在固定长度的相同数据类型的列表.

```rust
let arr: [i32; 4] = [1, 1, 2, 3];
````

其类型声明可以写成:

```rust, ignore
pub use type Array<T, N> = [T; N];
```

数组内存是分配在栈空间的, 内存是连续分配的, 它的类型及大小是在编译期间就确定的.

`[T; N]` 在编译期确定元素类型及个数, 且元素个数不可变; 另外, 数组在编译期就需要初始化.

有两种方法来创建数组:

- 可以显式地指定所有元素的值, `let arr = [1, 2, 3, 4, 5];`
- 可以一次性初始化成相同的值, `let arr = [42; 100];` 会创建有100个元素的数组, 元素的值都是42

看下面的一个示例程序, 用于计算 10000 以内的所有质数:

```rust
{{#include assets/array-of-prime-numbers.rs:5: }}
```

## 数组的内存布局

## 数组的常用方法

数组的操作方法, 比如 `arr.len()`, 都是隐式地将它先转换成相应的[切片 slice](slice.md), 再调用切片提供的方法.

- `as_slice()`, `as_mut_slice()`
- `each_ref()`, `each_mut()`

## 参考

- [array](https://doc.rust-lang.org/stable/std/primitive.array.html)