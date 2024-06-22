# Trait Objects

A reference to a trait type is called a trait object.

```rust
use std::io::Write;

fn main() {
    let mut buf: Vec<u8> = Vec::new();
    let writer: &mut dyn Write = &mut buf;
}
```

这里, `writer` 就是一个 `trait object`.

## Trait Object 的内存布局

`trait object` 是一种胖指针(fat pointer), 有两个指针组成; 在 64 位的机器上, 占用 `16` 个字节:

- `data ptr` 指针指向实际对象的内存地址
- `vtable ptr` 指针指向该对象的 `vtable`, 里面记录了该对象提供的方法; 这个表是相同类型的所有值所共享.

## 参考

- [Trait objects](https://doc.rust-lang.org/reference/types/trait-object.html)
- [Using Trait Objects That Allow for Values of Different Types](https://doc.rust-lang.org/book/ch17-02-trait-objects.html)
