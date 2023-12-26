
# String

有效的 UTF-8 编码字串.

Raw string, 为了避免频繁地转义, 可以用 `r"Raw string"` 这种形式.

还有, 如果字符串里面包含双引号, 可以用更复杂的写法:
```rust
println!(r###"
hello, world.
""""""Many double quotes here""""
"###);
```

- String, &str, Unicode text
- std::path::PathBuf, `&Path`
- Vec<u8>, &[u8]
- OsString, &OsStr
- std::ffi::CString, &CStr


## char
32-bit 的值

## FromStr
从字符串转为指定的类型, 只需要给这个类型实现了 `FromStr` trait.

```rust
trait FromStr: Sized {
  type Err;
  fn from_str(s: &str) -> Result<Self, Self::Err>;
}
```

比如说, 字符串转为整数, 字符串转为 `IPv4Addr`.

## To string
首先是 `std::fmt::Display` trait, 在将其它类型转为字符串时, 还可以对其进行格式化.


其实是 `std::str::ToString` trait, 通常只需要实现了 `Display` trait, 会自动实现
这个 `ToString` trait, 平时极少需要手动实现.

```rust
trait ToString {
  fn to_string(&self) -> String;
}
```

最后一个是 `std::fmt::Debug` trait, 这个是为了方便调用用的, 可以打印出数据的
内部结构.

## String Formatting

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
println!("{name} {age}", age=25, name="Jolia");
```

## String literals
Unicode 字符串，存在可执行文件的 text segment中。

多行：
```rust
let speech = "Hello
world";
```

多行拼接：
```rust
let speech = "Hello \
world";
```

raw string，不需要使用转义字符：
```rust
let path = r"C:\Users\root\Documents\config.json";
```

如果里面有双引号，可以使用以下写法：
```rust
let path = r###"C:\Program Files\foo\bar.json"###;
```

## Byte strings
Byte strings 只能包含 ASCII 码以及 `\xHH` 这些字符，由一些 `u8` 值组成。

```rust
let method = b"GET";
assert_eq!(method, &[b'G', b'E', b'T']);
```

要注意的是，它不是 string，而是 u8 array。

## String 及其内存结构
String 内部由 `Vec<u8>` 实现，但它会保证里面的是有效的 UTF-8 编码的字符串。

`&str` 是指向 String 的引用，它也能保证都是有效的 UTF-8 编码的。可以认为它是 `&[u8]`。

`String::len()` 或者 `&str.len()` 得到的是里面的字节数；如果要得到里面的 UTF-8
字符串长度，需要用 ｀String::chars()::count()` 方法。

## 其它字符串类型
有时并不需要保证是有效的 UTF-8 编码的字符串：

- `std::ffi::CString`或者 `&CStr` 表示C语言中以 null 结尾的字符串
- `OsString` 或者 `&OsStr` 用来处理命令行参数或者环境变量
- `std::path::PathBuf` 或者 `&Path` 表示文件路径
- `Vec<u8>` 或者 `&[u8]` 用于二进制的数据
