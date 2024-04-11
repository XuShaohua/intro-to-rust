//! FROM: https://www.zhihu.com/question/603518666/answer/3256663127

use std::marker::PhantomData;

struct Bounded<'a, 'b: 'a, T: ?Sized> {
    ptr: &'a T,
    _marker: PhantomData<&'b ()>,
}

fn helper<'a, 'b, T: ?Sized>(
    input: &'a T,
    closure: impl FnOnce(&T) -> Bounded<'b, '_, T>,
) -> &'b T {
    closure(input).ptr
}

fn extend<'b, T: ?Sized>(input: &T) -> &'b T {
    helper(input, |x| Bounded {
        ptr: x,
        _marker: PhantomData,
    })
}

fn main() {
    let s = String::from("aaaa");
    let a: &str = extend(s.as_str()); // turn &'a str into 'static
    println!("Before drop: {a}");
    drop(s);
    println!("After drop: {a}"); // Use after free!
}
