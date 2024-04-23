# 字符串格式化

使用 `{:#?}` 可以 pretty print:

```rust
println!("value: {:#?}", value);
```

使用 `{:p}` 打印指针:

```rust
println!("p: {:p}", p);
```

还支持类似于 python 中的那种格式化, 使用索引或者名称:

```rust
println!("{name} {age}", age = 25, name = "Jolia");
```
