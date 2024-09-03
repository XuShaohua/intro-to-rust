# 字符串格式化

`format!()` 宏用于生成格式化的字符串, 它类似于 C 语言中的 `printf()` 以及 Python 中的 `str.format()` 函数.

```rust
let name = "Julia";
let greating = format!("Hello, {}", name);
```

## 位置参数 Positional parameters

使用参数的位置索引, 比如 `{0}`, `{1}`, `{2}` 这种的.
如果省略了里面的位置标记, 那就会提供一个计数器, 从0开始计数.

看一个例子:

```rust
{{#include assets/positional-parameters.rs:5:}}
```

## 具名参数 Named parameters

还支持类似于 python 中的那种格式化, 使用参数名称, 实现更灵活更易读的参数引用:

```rust
{{#include assets/named-parameters.rs:5:}}
```

## 格式化参数 Formatting parameters

### 宽度 Width

可以指定参数所占用的最小宽度 (最少字符数), 如果宽度不够, 可以使用空格或者指定的字符来填充.

指定参数占用的宽度值, 该值需要是 `usize` 类型, 比如 `{name:width$}`, 这里的 `name` 是要被
格式化的参数, 而 `width` 参数就指定了它占用的宽度, 注意 `width` 后面那个 `$` 是作为后缀存在的.

```rust
{{#include assets/formatting-width.rs:5:}}
```

### 对齐方式

* `<` 左对齐
* `^` 居中
* `>` 右对齐

如果是结构体的话, 使用 `{:#?}` 可以实现类似 "pretty printing" 的效果, 多行打印结构体信息:

```rust
let value = [1, 1, 2, 3, 5];
println!("value: {:#?}", value);
```

### 常用格式化符号 Formatting Traits

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
