
# From trait 与 Into trait

`Convert A from B <=> Convert B into A`, 通常这个应该是成立的.

如果实现了 `From` trait, 会自动实现 `Into` trait:

```no_run
impl From<A> for B {
  fn from(item: A) -> B {
    
  }
}

let a: A = b.into();
let a2 = A::from(b);
```
以上两个写法, 都是正确的, 因为 `Into` trait 在标准库里被自动实现了, 通常只需要手动实现 `From` trait:

```rust
// From implies Into
#[stable(feature = "rust1", since = "1.0.0")]
impl<T, U> Into<U> for T
where
    U: From<T>,
{
    /// Calls `U::from(self)`.
    ///
    /// That is, this conversion is whatever the implementation of
    /// <code>[From]&lt;T&gt; for U</code> chooses to do.
    #[inline]
    fn into(self) -> U {
        U::from(self)
    }
}
```

`&str` 字符串切片可以转换成 `Vec<u8>` 字节数组, 看一个标准库是如何实现这个转换的:
```rust
#[cfg(not(no_global_oom_handling))]
#[stable(feature = "rust1", since = "1.0.0")]
impl From<&str> for Vec<u8> {
    /// Allocate a `Vec<u8>` and fill it with a UTF-8 string.
    ///
    /// # Examples
    ///
    /// ```
    /// assert_eq!(Vec::from("123"), vec![b'1', b'2', b'3']);
    /// ```
    fn from(s: &str) -> Vec<u8> {
        From::from(s.as_bytes())
    }
}
```

要注意的是, `From` 和 `Into` trait 是获取了值的所有权的, 有所有权的转移.

## 其它转换方式
- [基础数据类型使用 as](../fundamental/cast.md)
- [TryFrom/TryInto](../common-traits/try-from-try-into.md)
