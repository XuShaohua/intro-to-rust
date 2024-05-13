# 宏 Macros

在很早的版本中, C 语言就提供了宏 (macro), 但是那里的宏只是简单的宏展开, 进行字符串替换; 宏本身
并没有语法检查, 容易出错, 尤其是处理参数时; 只是在使用时把宏展开, 再由编译器检查.

但 Rust 语言中的宏与语言本身结合得更紧密, 更不容易出错.

调用宏与一般的函数调用类似, 比如: `debug_assert!(!s.is_empty());`.

使用宏的好处:

- 可以获取宏调用处的位置信息, 比如 `file!()`, `line!()`, `column`()`, 方便定位到代码; 而函数调用就不能直接得到函数调用位置的信息
- 可以重用代码, 比如标准库中的 `num` 模块, 为整数类型实现的各种方法, 大都由宏定义提供, 然后为所有整数一并实现,
  可以看下面的代码片段:

```rust, ignore
macro_rules! from_str_radix_int_impl {
    ($($t:ty)*) => {$(
        #[stable(feature = "rust1", since = "1.0.0")]
        impl FromStr for $t {
            type Err = ParseIntError;
            fn from_str(src: &str) -> Result<Self, ParseIntError> {
                from_str_radix(src, 10)
            }
        }
    )*}
}
from_str_radix_int_impl! { isize i8 i16 i32 i64 i128 usize u8 u16 u32 u64 u128 }

macro_rules! impl_helper_for {
    ($($t:ty)*) => ($(impl FromStrRadixHelper for $t {
        const MIN: Self = Self::MIN;
        #[inline]
        fn from_u32(u: u32) -> Self { u as Self }
        #[inline]
        fn checked_mul(&self, other: u32) -> Option<Self> {
            Self::checked_mul(*self, other as Self)
        }
        #[inline]
        fn checked_sub(&self, other: u32) -> Option<Self> {
            Self::checked_sub(*self, other as Self)
        }
        #[inline]
        fn checked_add(&self, other: u32) -> Option<Self> {
            Self::checked_add(*self, other as Self)
        }
    })*)
}
impl_helper_for! { i8 i16 i32 i64 i128 isize u8 u16 u32 u64 u128 usize }
```

但是, 只应该在必要时才使用宏; 如果考虑代码重用, 可以优先考虑使用泛型, 或者 traits:

- 宏代码更难阅读, 也就更难维护
- 宏支持的传入参数很丰富, 也更复杂