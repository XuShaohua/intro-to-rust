
# Conversions
TODO(Shaohua): Remove this file

## 类型转换 Casting
类型转换时的精度问题, 与 C 语言中一致.
显式类型转换:
```rust
let decimal = 3.14_159_265;
let integer = decimal as i32;
```

## From and Into
`Convert A from B <=> Convert B into A`, 通常这个应该是成立的.

如果实现了 `From` trait, 会自动实现 `Into` trait:

```no_run
use std::convert::From;

impl From<A> for B {
  fn from(item: A) -> B {
    
  }
}

let a: A = b.into();
let a2 = A::from(b);
```
以上两个写法, 都是正确的, 因为 `Into` trait 被自动实现了.
所以我们通常只需要手动实现 `From` trait 就够了.

## TryFrom and TryInfo
`TryFrom` 和 `TryInfo` 这两个 trait, 主要是为了容错, 因为类型之间的转换有可能是
会失败的. 所以这两个 trait 会返回 `Result<>` 结构.

## To and from Strings
如果将一个类型转为字符串, 可以手动实现 `ToString` trait.

但是, 通常我们只需要实现 `std::fmt::Display` trait 即可, 它即实现了 `ToString` trait,
也可以在 `print!()` 等一系列宏中被使用.

如果要将字符串转为特定类型, 只需要实现 `FromStr` trait 即可.
