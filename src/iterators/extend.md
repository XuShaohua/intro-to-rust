
# Extend

这个 trait 主要是给容器类使用, 将迭代器里的值依次存储到容器类中.

```rust
pub trait Extend<A> {
    fn extend<T>(&mut self, iter: T) where T: IntoIterator<Item = A>;

    fn extend_one(&mut self, item: A) { ... }
    fn extend_reserve(&mut self, additional: usize) { ... }
}
```

举个例子:

```rust
let mut message = String::from("The first three letters are: ");
message.extend(&['a', 'b', 'c']);
assert_eq!("abc", &message[29..32]);
```
