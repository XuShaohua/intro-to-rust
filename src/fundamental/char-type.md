
# 字符 char
char, 表示 Unicode 单个字符, 比如 `a`, 4字节, 使用单引号引用.

一个 char 使用 32-bit 的空间.
一个 char 表示一个 Unicode code point, 范围是:
- 0x0000 - 0xD7FF
- 0xE000 - 0x10FFFF

只有 u8 类型可以用 `as` 来转换成 char.

