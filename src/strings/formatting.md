# 字符串格式化

使用 `{:#?}` 可以 pretty print:

```rust
let value = [1, 1, 2, 3, 5];
println!("value: {:#?}", value);
```

使用 `{:p}` 打印指针:

```rust, ignore
println!("p: {:p}", p);
```

还支持类似于 python 中的那种格式化, 使用索引或者名称:

```rust
println!("{name} {age}", age = 25, name = "Jolia");
```

## Format

`print!()` 对参数进行格式化输出时, 参考了 python 的 string format.

* `write!()`
* `format!()`
* `println!()`
* `eprintln!()`

格式化一个值时, 要使用 `to_string()` 方法, 这个方法由 `fmt::Display` trait 提供.

位置参数: 比如 `{0}`, `{1}`, `{2}` 这种的, 如果省略了里面的位置标记, 那就会提供
一个计数器, 从0开始计数. 比如 `println!("{1} {} {2}", 1, 2, 3)` 读取的参数顺序
依次是 `1`, `0`, `2`, 其结果就会输出 `"2 1 3"` 这样的字符串.

对齐方式:

* `<` 左对齐
* '^' 居中
* '>' 右对齐

如果是结构体的话, 还支持 pretty printing, 只需要使用 `{:#?}` 这样的标记即可.

## Format Traits