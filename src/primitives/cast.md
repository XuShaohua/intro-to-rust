
# 类型转换 Casting

基础数据类型, 可以使用 `as` 进行转换, 其中的数值精度问题与C语言保持一致.

C/C++默认是进行隐式类型转换的, 这种做法尽管比较方便灵活, 但也容易产生问题. 而 Rust 就要求使用
显式的类型转换.

```c
int sum = -42;
unsigned int pos_sum = sum;
assert(pos_sum == 4294967254);
```

同样的语句:

```rust
let sum = -42i32;
let pos_sum = sum as u32;
assert_eq!(pos_sum, 4294967254);
```

## 其它转换方式
- [From/Into](../common-traits/from-into.md)
- [TryFrom/TryInto](../common-traits/try-from-try-into.md)