
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

## &str.to_owned()

将字符串切片转换成 `String` 对象:
```rust
let s: String = "hello".to_owned();
```

用到了 `ToOwned` trait:

```rust
impl ToOwned for str {
    type Owned = String;
    #[inline]
    fn to_owned(&self) -> String {
        unsafe { String::from_utf8_unchecked(self.as_bytes().to_owned()) }
    }

    fn clone_into(&self, target: &mut String) {
        let mut b = mem::take(target).into_bytes();
        self.as_bytes().clone_into(&mut b);
        *target = unsafe { String::from_utf8_unchecked(b) }
    }
}
```

## 相关信息
- [Clone](clone-copy.md)
- [Cow](../mem/cow.md)
