# 文档测试 Doc Test

直接位于函数注释中的测试代码, 也是一种常用的单元测试, 通常还用于展示该函数或者类型的用法.

```rust

/// Some comments.
///
/// ```rust
/// assert_eq!(fibonacci(10), 89);
/// ```  
pub fn fibonacci(n: u32) -> u32 {
    if n == 0 || n == 1 {
        1
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}
```