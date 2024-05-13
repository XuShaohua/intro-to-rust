# 常用的宏 Common Macros

在学习如何编写宏代码之前, 我们先熟悉一下如何调用宏. 本节主要介绍常用到的标准库中的宏.

## dbg!()

`std::dbg!()` 宏用于调试代码, 尤其是使用递归调用时:

```rust
fn factorial(n: u32) -> u32 {
    if dbg!(n <= 1) {
        dbg!(1)
    } else {
        dbg!(n * factorial(n - 1))
    }
}

fn main() {
    let x = 42;
    dbg!(x);

    dbg!(factorial(5));
}
```
