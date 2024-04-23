
# DoubleEndedIterator
这个 trait 提供了方法, 可以从前后两端访问迭代器.

```rust
ub trait DoubleEndedIterator: Iterator {
    fn next_back(&mut self) -> Option<Self::Item>;

    fn advance_back_by(&mut self, n: usize) -> Result<(), NonZeroUsize> { ... }
    fn nth_back(&mut self, n: usize) -> Option<Self::Item> { ... }
    ...
}
```

比如 `VecDeque` 双端队列以及 `LinkedList` 双向链表的迭代器就实现了这个 trait.

这个方法平时并不会直接被调用, 而是使用 `Iterator::rev()` 方法, 调转迭代器的执行方向.

```rust
let a = [1, 2, 3];

let mut iter = a.iter().rev();

assert_eq!(iter.next(), Some(&3));
assert_eq!(iter.next(), Some(&2));
assert_eq!(iter.next(), Some(&1));

assert_eq!(iter.next(), None);
```
