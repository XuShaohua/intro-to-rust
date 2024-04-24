# Iterator 与 IntoIterator

`Iterator` trait 与 `IntoIterator` trait 是 Rust 实现迭代器的基础.

`Iterator` trait 的定义比较复杂, 有70多个方法, 但通常只需要实现 `next()` 方法即可.
该方法会返回 `Option<Self::Item>`, 返回下一个元素 `Some(Self::Item)`; 如果没有下个元素的话, 就返回 `None`.

```rust, ignore
pub trait Iterator {
    type Item;

    // Required method
    fn next(&mut self) -> Option<Self::Item>;

    // Provided methods
    fn next_chunk<const N: usize>(
        &mut self
    ) -> Result<[Self::Item; N], IntoIter<Self::Item, N>>
       where Self: Sized { ... }
    fn size_hint(&self) -> (usize, Option<usize>) { ... }
    fn count(self) -> usize
       where Self: Sized { ... }
    fn last(self) -> Option<Self::Item>
       where Self: Sized { ... }
    ...
```
