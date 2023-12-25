# Tests

* `cargo test`
* `cargo test --doc`

## dev-dependencies
如果在运行测试实例时, 需要额外的库, 可以在 `Cargo.toml` 中的 `[dev-dependencies]` 中加入需要的库.


## 集成测试
将集成测试代码放在独立的 `tests/` 目录里, 它们也是普通的 `.rs` 文件.

## 单元测试
在模块内部直接编写的, 用于测试各个函数的功能. 

```rust
pub fn fibonacci(n: u32) -> u32 {
    if n == 0 || n == 1 {
        1
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}

#[cfg(tests)]
mod tests {
    use super::fibonacci;
    
    #[test]
    fn test_fibonacci() {
        assert_eq!(fibonacci(10), 89);
    }
}
```

## 文档测试 doc testing
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