# 单元测试 Unit Test

在模块内部直接编写的, 用于测试各个函数的功能.

```rust
pub fn fibonacci(n: u32) -> u32 {
    if n == 0 || n == 1 {
        1
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}

#[cfg(test)]
mod tests {
    use super::fibonacci;

    #[test]
    fn test_fibonacci() {
        assert_eq!(fibonacci(10), 89);
    }
}
```

可以使用这样的命令来编译和运行:

- `cargo test`
- `rustc --test xxx`