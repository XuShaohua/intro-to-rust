# TryFrom 与 TryInto

`TryFrom` 和 `TryInfo` 这两个 trait, 主要是为了容错, 因为类型之间的转换有可能是
会失败的. 所以这两个 trait 会返回 `Result<>` 结构.

它们的定义如下, 可以看到, 接口定义跟 `From` trait 以及 `Into` trait 很相似:

```rust
pub trait TryFrom<T>: Sized {
    type Error;

    // Required method
    fn try_from(value: T) -> Result<Self, Self::Error>;
}

pub trait TryInto<T>: Sized {
    type Error;

    // Required method
    fn try_into(self) -> Result<T, Self::Error>;
}
```

`char` 模块实现了将 `char` 转换成 `u8`, `u16` 等数值类型, 下面是代码片段:

```rust, ignore
#[stable(feature = "u8_from_char", since = "1.59.0")]
impl TryFrom<char> for u8 {
    type Error = TryFromCharError;

    /// Tries to convert a [`char`] into a [`u8`].
    ///
    /// # Examples
    ///
    /// ```
    /// let a = 'ÿ'; // U+00FF
    /// let b = 'Ā'; // U+0100
    /// assert_eq!(u8::try_from(a), Ok(0xFF_u8));
    /// assert!(u8::try_from(b).is_err());
    /// ```
    #[inline]
    fn try_from(c: char) -> Result<u8, Self::Error> {
        u8::try_from(u32::from(c)).map_err(|_| TryFromCharError(()))
    }
}
```

平时只需要实现 `TryFrom` trait 即可, 因为 `TryInto` 已被标准库实现:

```rust, ignore
// TryFrom implies TryInto
#[stable(feature = "try_from", since = "1.34.0")]
impl<T, U> TryInto<U> for T
where
    U: TryFrom<T>,
{
    type Error = U::Error;

    #[inline]
    fn try_into(self) -> Result<U, U::Error> {
        U::try_from(self)
    }
}
```

## 一个示例代码

下面的代码定义了MQTT协议的版本.

```rust

use std::convert::TryFrom;

/// Current version of MQTT protocol can be:
/// * 3.1
/// * 3.1.1
/// * 5.0
#[repr(u8)]
#[derive(Debug, Default, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum ProtocolLevel {
    /// MQTT 3.1
    V3 = 3,

    /// MQTT 3.1.1
    #[default]
    V4 = 4,

    /// MQTT 5.0
    V5 = 5,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum DecodeError {
    InvalidProtocolLevel,
}

impl TryFrom<u8> for ProtocolLevel {
    type Error = DecodeError;

    fn try_from(v: u8) -> Result<Self, Self::Error> {
        match v {
            3 => Ok(Self::V3),
            4 => Ok(Self::V4),
            5 => Ok(Self::V5),

            _ => Err(DecodeError::InvalidProtocolLevel),
        }
    }
}
```

## 其它转换方式

- [Casting](../primitives/cast.md)
- [From/Into](../common-traits/from-into.md)
- [mem::transmute](../mem/mem/transmute.md)
