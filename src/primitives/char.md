
# 字符 char

char, 表示 Unicode 单个字符, 比如 `a`, 使用 32-bit 的空间, 即 4 个字节, 使用单引号引用.
```rust
use std::mem::size_of_val;
let char_a = 'a' as char;
assert_eq!(size_of_val(&char_a), 4);
```

一个 char 表示一个 Unicode code point, 范围是:
- 0x0000 - 0xD7FF
- 0xE000 - 0x10FFFF

只有 u8 类型可以用 `as` 来转换成 char.

## 参考
- [Unicode.org](https://home.unicode.org/)
- [char模块](https://doc.rust-lang.org/stable/std/char/index.html)
- [ascii模块](https://doc.rust-lang.org/stable/std/ascii/index.html)