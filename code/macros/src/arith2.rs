#[derive(Debug, PartialEq)]
struct Point {
    x: i32,
    y: i32,
}

pub trait Add2<Rhs = Self> {
    type Output;

    fn add(self, rhs: Rhs) -> Self::Output;
}

pub trait Sub2<Rhs = Self> {
    type Output;

    fn sub(self, rhs: Rhs) -> Self::Output;
}

pub trait Mul2<Rhs = Self> {
    type Output;

    fn mul(self, rhs: Rhs) -> Self::Output;
}

pub trait Div2<Rhs = Self> {
    type Output;

    fn div(self, rhs: Rhs) -> Self::Output;
}

macro_rules! div_impl_integer {
    ($($t:ty)*) => ($(
        impl Div2 for $t {
            type Output = $t;

            #[inline]
            fn div(self, other: $t) -> $t { self / other }
        }

        //forward_ref_binop! { impl Div, div for $t, $t }
    )*)
}

div_impl_integer! { usize u8 u16 u32 u64 u128 isize i8 i16 i32 i64 i128 }

macro_rules! div_impl_float {
    ($($t:ty)*) => ($(
        impl Div2 for $t {
            type Output = $t;

            #[inline]
            fn div(self, other: $t) -> $t { self / other }
        }

        //forward_ref_binop! { impl Div, div for $t, $t }
    )*)
}

div_impl_float! { f32 f64 }

impl Add2 for Point {
    type Output = Self;

    fn add(self, other: Self) -> Self {
        Self {
            x: self.x + other.x,
            y: self.y + other.y,
        }
    }
}

pub trait AddAssign2<Rhs = Self> {
    fn add_assign(&mut self, other: Rhs);
}

macro_rules! add_assign_impl {
    ($($t:ty)+) => ($(
        impl AddAssign2 for $t {
            #[inline]
            fn add_assign(&mut self, other: $t) {
                *self += other
            }
        }
    )+)
}

add_assign_impl! { usize u8 u16 u32 u64 u128 isize i8 i16 i32 i64 i128 f32 f64 }
