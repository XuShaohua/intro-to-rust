# FromStr trait 与 ToString trait

## FromStr trait

从字符串转为指定的类型, 只需要给这个类型实现了 `FromStr` trait.

```rust
trait FromStr: Sized {
  type Err;
  fn from_str(s: &str) -> Result<Self, Self::Err>;
}
```

比如说, 字符串转为整数, 字符串转为 `IPv4Addr`:

```rust, ignore
impl FromStr for Ipv4Addr {
    type Err = AddrParseError;
    fn from_str(s: &str) -> Result<Ipv4Addr, AddrParseError> {
        Self::parse_ascii(s.as_bytes())
    }
}
```

## ToString trait

`std::fmt::Display` trait, 在将其它类型转为字符串时, 还可以对其进行格式化.

通常我们不直接为自定义类实现 `ToString` trait, 而是实现 `Display` trait, 后者会自动
实现 `ToString` trait.

```rust
trait ToString {
  fn to_string(&self) -> String;
}
```
