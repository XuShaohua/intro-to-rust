
# ToOwned
为了解决 `Clone` trait 无法复制引用的值本身, 引入了 `ToOwned` trait.
它可以复制引用的真正的数据, 比如 `&str` 引用的 `String`, 只需要为 `str` 实现
`ToOwned<Owned=String>` 即可.

```rust
trait ToOwned {
  type Owned: Borrow<Self>;
  fn to_owned(&self) -> Self::Owned;
}
```

## 相关信息
- [Clone](clone-copy.md)
- [Cow](../mem/cow.md)
