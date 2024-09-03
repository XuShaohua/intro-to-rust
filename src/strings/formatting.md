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

## 常用格式化符号 Formatting Traits

`println!("{formatting}", arg);`, 这里的 `formatting` 就是本节要讨论的 Formatting traits,
标准库里定义了一些 traits, 用于修饰被格式化的参数, 以得到期望的形式.

| 符号    | 描述                                      |
|-------|-----------------------------------------| 
| 空白    | 调用 `fmt::Display` trait                 |
| `:?`  | 调用 `fmt::Debug` trait                   |
| `:x?` | 调用 `fmt::Debug` trait, 并使用小写的十六进制整数     |
| `:X?` | 调用 `fmt::Debug` trait, 并使用大写的十六进制整数     |
| `:o`  | 调用 `fmt::Octal` trait, 转换成八进制           |
| `:x`  | 调用 `fmt::LowerHex` trait, 转换成小写的十六进制    |
| `:X`  | 调用 `fmt::UpperHex` trait, 转换成大写的十六进制    |
| `:b`  | 调用 `fmt::Binary` trait, 转换成二进制          | 
| `:e`  | 调用 `fmt::LowerExp` trait, 转换成小写的科学计数法格式 |
| `:E`  | 调用 `fmt::UpperExp` trait, 转换成大写的科学计数法格式 |
| `:p`  | 调用 `fmt::Pointer` trait, 转换成指针形式        |

在标准库中已经为很多基础数据类型实现了, 上表中列出来的 `fmt` 模块中的各个 traits.

下面的代码示例展示了如何使用格式化参数:

```rust
{{#include assets/formatting.rs:5:}}
```

## 相关的宏定义

标准库中定义了一系列与字符串格式化相关的宏, 它们分别是:

- `format!`
- `write!`
- `writeln!`
- `print!`
- `println!`
- `eprint!`
- `eprintln!`
- `format_args!`

### `format!` 宏