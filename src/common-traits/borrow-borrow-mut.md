
# Borrow 与 BorrowMut

```rust
trait Borrow<Borrowed: ?Sized> {
  fn borrow(&self) -> &Borrowed;
}

trait BorrowMut<Borrowed: ?Sized>: Borrow<Borrowed> {
  fn borrow_mut(&mut self) -> &mut Borrowed;
}
```

`Borrow` trait 与 `AsRef` trait 实现是一致的, 差别只在于 `Borrow` trait 更严格一些.
即要求被引用的对象的 `hash` 值是一致的. 比如哈稀表的实现:
```rust
impl HashMap<K, V> where K: Eq + Hash
{
  pub fn get<Key>(&self, k: &Key) -> Option<&V>
      where Key: ?Sized + Eq + Hash, K: Borrow<Key>, V: ?Sized
  { ... }
}
```