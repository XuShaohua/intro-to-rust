# Trait Objects

A reference to a trait type is called a trait object.

```rust
use std::io::Write;

fn main() {
    let mut buf: Vec<u8> = Vec::new();
    let writer: &mut Write = &mut buf;
}
```

这里, `writer` 就是一个 `trait object`.

每个 `trait object` 都是一个 `fat pointer`, 有两个指针组成, 也就是说, 在 64 位的机器上,
这样的一个指针, 占了 `16` 个字节:

- `data` 指针指向实际对象的内存地址
- `vptr` 指针指向该对象的 `vtable`, 里面记录了该对象提供的方法; 这个表是相同类型的所有值所共享.

除了上面的 `&mut Write` 指针之外, 还有 `Box<Write>` 以及 `Rc<Write>` 这样的指针.

## 参考

- [Trait objects](https://doc.rust-lang.org/reference/types/trait-object.html)
- [Using Trait Objects That Allow for Values of Different Types](https://doc.rust-lang.org/book/ch17-02-trait-objects.html)