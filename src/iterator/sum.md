
# 求和 Sum
这个 trait 表示将一个 iterator 里的所有元素求和, 得到结果.
它的定义如下:

```rust
pub trait Sum<A = Self>: Sized {
    fn sum<I>(iter: I) -> Self where I: Iterator<Item = A>;
}
```

这个 trait 只会被目标类型实现, 而不会直接被调用; 相反地, 通常直接调用 `Iterator::sum()` 方法:
```rust
let a = [1, 2, 3];
let sum: i32 = a.iter().sum();

assert_eq!(sum, 6);
```
