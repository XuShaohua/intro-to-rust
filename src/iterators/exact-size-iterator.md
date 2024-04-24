# ExactSizeIterator

如果迭代器里的元素个数是已知的, 就可以实现这个 trait. 比如 slice, Vec, String以及其它容器类等.

```rust, ignore
pub trait ExactSizeIterator: Iterator {
    fn len(&self) -> usize { ... }
    fn is_empty(&self) -> bool { ... }
}
```

用法也很简单:

```rust
let mut range = 0..5;
assert_eq!(5, range.len());
let _ = range.next();
assert_eq!(4, range.len());
```