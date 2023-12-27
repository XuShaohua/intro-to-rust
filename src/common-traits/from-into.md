
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
以上两个写法, 都是正确的, 因为 `Into` trait 被自动实现了.
所以我们通常只需要手动实现 `From` trait 就够了.

## 其它转换方式
- [基础数据类型使用 as](../fundamental/cast.md)
- [TryFrom/TryInto](../common-traits/try-from-try-into.md)
