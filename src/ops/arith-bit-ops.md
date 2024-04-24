# 算术与比特位操作符 Arithmetic and bitwise operators

标准库里提供的算术与比特位操作符 trait, 都列在了下面表格里:

| 分类         | trait                  | 表达式     | 描述     |
|------------|------------------------|---------|--------|
| 一元操作符      | std::ops::Neg          | -x      | 取负值    |
|            | std::ops::Not          | !x      | 取逻辑否   |
| 二元算术操作符    | std::ops::Add          | x + y   | 算术相加操作 |
|            | std::ops::Sub          | x - y   | 算术相减操作 |
|            | std::ops::Mul          | x * y   | 算术相乘操作 |
|            | std::ops::Div          | x / y   | 算术相除操作 |
|            | std::ops::Rem          | x % y   | 算术求余操作 |
| 二元比特位操作符   | std::ops::BitAnd       | x & y   | 按位与操作  |
|            | std::ops::BitOr        | `x      | y`     | 按位或操作 |
|            | std::ops::BitXor       | x ^ y   | 按位与或操作 |
|            | std::ops::Shl          | x << y  | 左移     |
|            | std::ops::Shr          | x >> y  | 右移     |
| 二元赋值算术操作符  | std::ops::AddAssign    | x += y  | 算术相加   |
|            | std::ops::SubAssign    | x -= y  | 算术相减   |
|            | std::ops::MulAssign    | x *= y  | 算术相乘   |
|            | std::ops::DivAssign    | x /= y  | 算术相除   |
|            | std::ops::RemAssign    | x %= y  | 算术求余   |
| 二元赋值比特位操作符 | std::ops::BitAndAssign | x &= y  | 按位与赋值  |
|            | std::Ops::BitOrAssign  | `x      | = y`   | 按位或赋值 |
|            | std::ops::BitXorAssign | x ^ y   | 按位与或赋值 |
|            | std::ops::ShlAssign    | x <<= y | 左移赋值   |
|            | std::ops::ShrAssign    | x >>= y | 右移赋值   |

接下来以复数类型为例, 其定义如下:

```rust
#[derive(Debug, Default, Clone, Copy, PartialEq, Eq, Hash)]
pub struct Complex<T> {
    /// 实数部分
    pub re: T,

    /// 虚数部分
    pub im: T,
}

pub type Complex32 = Complex<f32>;
pub type Complex64 = Complex<f64>;

impl<T> Complex<T> {
    #[must_use]
    #[inline]
    pub const fn new(re: T, im: T) -> Self {
        Self { re, im }
    }
}
```

## 一元操作符

| trait         | 表达式 | 等价的表达式  |
|---------------|-----|---------|
| std::ops::Neg | -x  | x.neg() |
| std::ops::Not | !x  | x.not() |

一元操作符 `-`, 对应于`Neg` trait, 它的接口定义如下:

```rust
pub trait Neg {
    type Output;
    fn neg(self) -> Self::Output;
}
```

只需要定义 `neg()` 方法即可, 我们来复数结构实现这个trait:

```rust
{{#include assets/complex.rs:5:39 }}
```

逻辑否操作`!`, 对应于 `Not` trait, 它的接口定义如下:

```rust
pub trait Not {
    type Output;
    fn not(self) -> Self::Output;
}
```

复数并不需要实现这个操作, 我们用别的例子来展示一下:

```rust
use std::ops::Not;

#[derive(Debug, PartialEq)]
enum Answer {
    Yes,
    No,
}

impl Not for Answer {
    type Output = Self;

    fn not(self) -> Self::Output {
        match self {
            Answer::Yes => Answer::No,
            Answer::No => Answer::Yes
        }
    }
}

assert_eq!(!Answer::Yes, Answer::No);
assert_eq!(!Answer::No, Answer::Yes);
```

## 二元算术操作符

先来介绍 `Add` trait, 它定义了加法操作, 其接口如下:

```rust
pub trait Add<Rhs = Self> {
    type Output;

    fn add(self, rhs: Rhs) -> Self::Output;
}
```

下面的例子代码就是为复数实现 `Add` trait:

```rust, ignore
impl<T: Add<T, Output=T>> Add for Complex<T> {
    type Output = Self;

    fn add(self, rhs: Self) -> Self::Output {
        Self {
            re: self.re + rhs.re,
            im: self.im + rhs.im,
        }
    }
}
```

其它几个二元算术操作符的定义与上面的类似, 我们一并列出来:

```rust, ignore
pub trait Sub<Rhs = Self> {
    type Output;
    fn sub(self, rhs: Rhs) -> Self::Output;
}

pub trait Mul<Rhs = Self> {
    type Output;
    fn mul(self, rhs: Rhs) -> Self::Output;
}

pub trait Div<Rhs = Self> {
    type Output;
    fn div(self, rhs: Rhs) -> Self::Output;
}

pub trait Rem<Rhs = Self> {
    type Output;
    fn rem(self, rhs: Rhs) -> Self::Output;
}
```

为复数实现这些接口:

```rust, ignore
impl<T: Sub<T, Output=T>> Sub for Complex<T> {
    type Output = Self;

    fn sub(self, rhs: Self) -> Self::Output {
        Self {
            re: self.re - rhs.re,
            im: self.im - rhs.im,
        }
    }
}

impl<T> Mul for Complex<T>
    where
        T: Copy + Add<T, Output=T> + Sub<T, Output=T> + Mul<T, Output=T>,
{
    type Output = Self;

    fn mul(self, rhs: Self) -> Self::Output {
        let re = self.re * rhs.re - self.im * rhs.im;
        let im = self.re * rhs.im + self.im * rhs.re;
        Self { re, im }
    }
}

impl<T> Div for Complex<T>
    where
        T: Copy + Add<T, Output=T> + Sub<T, Output=T> + Mul<T, Output=T>,
{
    type Output = Self;

    fn div(self, rhs: Self) -> Self::Output {
        let re = self.re * rhs.re + self.im * rhs.im;
        let im = self.im * rhs.re - self.re * rhs.im;
        Self { re, im }
    }
}
```

## 二元比特位操作符

## 二元赋值算术操作符

## 二元赋值比特位操作符