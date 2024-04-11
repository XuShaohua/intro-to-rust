pub trait Add1 {
    type Output;
    fn add1(self) -> Self::Output;
}

macro_rules! add1_impl {
    ( $( $t:ident )* ) => {
        $(
            impl Add1 for $t {
                type Output = $t;

                fn add1(self) -> Self::Output {
                    self + 1
                }
            }
        )*
    };
}

add1_impl!(u8 i8 u16 i16 u32 i32 u64 i64);

fn main() {
    println!("add 1");
    println!("42 + 1: {}", i8::add1(42));
}
