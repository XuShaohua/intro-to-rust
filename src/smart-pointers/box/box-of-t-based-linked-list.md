# 使用 `Box<T>` 实现单链表

像链表这样的递归式的数据结构, 就需要用到 `Box<T>` 等方式, 来绕过编译器的报错:

```rust
pub struct LinkedList<T> {
    val: T,
    next: Option<Box<LinkedList<T>>>,
}
```
