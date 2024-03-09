
# 乘积 Product
这个 trait 表示将一个 iterator 里的所有元素求乘积, 并得到结果.
它的定义如下:

```rust
pub trait Product<A = Self>: Sized {
    fn product<I>(iter: I) -> Self where I: Iterator<Item = A>;
}
```

这个 trait 只会被目标类型实现, 而不会直接被调用; 相反地, 通常直接调用 `Iterator::product()` 方法:

```rust
fn factorial(n: u32) -> u32 {
    (1..=n).product()
}
assert_eq!(factorial(0), 1);
assert_eq!(factorial(1), 1);
assert_eq!(factorial(5), 120);
```