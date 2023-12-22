
# 元组 Tuple

tuple, 元组, 比如 `(1, 'a', true), 用于存放定长的不同数据类型的列表.

元组跟在 C++ 中的一样, 用于存放不同数据类型的一堆数据: `(1, 2, false, 3.14)`.

```rust
#[derive(Debug, Clone, Copy)]
struct Matrix(f64, f64, f64, f64);
```

tuple, 定长, 可以存放不同类型的数值: `struct Matrix(f64, f64, f64);`.
- 可以组合各种不同类型的数据, 而 array 只能存放相同类型的数据
- 编译期即可确定其元素个数
- 使用下标访问元素, 而不是像 struct 那样使用元素名来访问
- 常使用它做为函数返回值, 这样函数就可以返回多个值了

Rust 允许在使用逗号的地方, 在最后一个元素尾部多加一个逗号, 比如:
- `fn foo(a: i32, b:i32,);`
- `(48, 42,)`
- `enum Colors { Red, Green, Blue, }`
这样方使书写.
