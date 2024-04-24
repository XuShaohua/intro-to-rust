# FromIterator

从一个迭代器构造容器对象.

```rust
pub trait FromIterator<A>: Sized {
    fn from_iter<T>(iter: T) -> Self where T: IntoIterator<Item = A>;
}
```

先看一个简单的示例:

```rust
let five_fives = std::iter::repeat(5).take(5);
let v = Vec::from_iter(five_fives);
assert_eq!(v, vec![5, 5, 5, 5, 5]);
```

当然, `Iterator::collect()` 方法也会使用这个 trait, 上面的代码也可以这样写:

```rust
let five_fives = std::iter::repeat(5).take(5);
let v = five_fives.collect::<Vec<_>>();
assert_eq!(v, vec![5, 5, 5, 5, 5]);
```

要为一个容器实现这个 trait 也比较容易, 我们以标准库里的 LinkedList 双链表为例:

```rust, ignore
impl<T> Extend<T> for LinkedList<T> {
    fn extend<I: IntoIterator<Item = T>>(&mut self, iter: I) {
        <Self as SpecExtend<I>>::spec_extend(self, iter);
    }

    #[inline]
    fn extend_one(&mut self, elem: T) {
        self.push_back(elem);
    }
}

impl<T> FromIterator<T> for LinkedList<T> {
    fn from_iter<I: IntoIterator<Item = T>>(iter: I) -> Self {
        let mut list = Self::new();
        list.extend(iter);
        list
    }
}
```