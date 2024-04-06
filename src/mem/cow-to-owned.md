# 写时复制 Cow 与 ToOwned

`Cow` (Clone on Write) 是一个枚举类型.

```rust
enum Cow<'a, B: ?Sized + 'a>
    where B: ToOwned
{
    Borrowed(&'a B),
    Owned(<B as ToOwned>::Owned),
}
```
