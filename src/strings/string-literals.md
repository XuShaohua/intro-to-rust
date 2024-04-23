# 字符串常量 String Literals

Unicode 字符串, 存在可执行文件的 text segment中.

多行字符串:

```rust, not_run
let speech = "Hello
world";
```

多行拼接:

```rust, not_run
let speech = "Hello \
world";
```

## Raw Strings

Raw strings, 不需要使用转义字符:

```rust, not_run
let path = r"C:\Users\root\Documents\config.json";
```

如果里面有双引号, 可以使用以下写法:

```rust, not_run
let path = r###"C:\Program Files\foo\bar.json"###;
```

更复杂的多行示例:

```rust
println!(r###"
hello, world.
""""""Many double quotes here""""
"###);
```

## Byte strings

Byte strings 只能包含 ASCII 码以及 `\xHH` 这些字符，由一些 `u8` 值组成。

```rust, not_run
let method = b"GET";
assert_eq!(method, &[b'G', b'E', b'T']);
```

要注意的是, 它不是 string, 而是 u8 array, `[u8]`.

## C strings

C Strings 用于快速创建与 C 语言兼容的字符串, 字符串以 `'\0'` 结尾.
这个特性是1.77版本中引入的. 它代表了 `&std::ffi::CStr`.

```rust
use std::ffi::CStr;
assert_eq!(c"hello", CStr::from_bytes_with_nul(b"hello\0").unwrap());
```

## 参考

- [C-string literals](https://doc.rust-lang.org/nightly/edition-guide/rust-2021/c-string-literals.html)
