
# 范型函数 generic function

对于泛型这种形式, rust 在编译期会生成不同版本的函数. 也就是说, 跟 `Trait Objects` 不同的是,
泛型函数不需要在运行期查找 `vtable`, 即所谓的动态派发 (dynamic dispatch), 所以其性能要更好些,
但是因为生成了不同版本的函数, 就导致可执行文件的大小有所增加. 此外, 还可以在编译期对这些生成的函数做特定的优化,
比如 `inline`, 或者在直接计算常量的值.

```rust
fn say_hello<W: std::io::Write>(out: &mut W) -> std::io::Result<()> {
  todo!()
}
```