//! From `https://stackoverflow.com/questions/27831944/how-do-i-store-a-closure-in-a-struct-in-rust`

#![allow(dead_code)]
#![allow(clippy::disallowed_names)]

// Un boxed closure, using a generic type
pub struct Foo<F>
where
    F: Fn(usize) -> usize,
{
    pub foo: F,
}

impl<F> Foo<F>
where
    F: Fn(usize) -> usize,
{
    fn new(foo: F) -> Self {
        Self { foo }
    }
}

fn unboxed_closure() {
    let foo = Foo { foo: |a| a + 1 };
    println!("{}", (foo.foo)(42));
    println!("{}", (Foo::new(|a| a + 1).foo)(42));
}

pub struct Foo2 {
    pub foo: Box<dyn Fn(usize) -> usize>,
}

// Boxed trait object
impl Foo2 {
    fn new(foo: impl Fn(usize) -> usize + 'static) -> Self {
        Self { foo: Box::new(foo) }
    }
}

fn boxed_trait_object() {
    let foo = Foo2 {
        foo: Box::new(|a| a + 1),
    };
    println!("{}", (foo.foo)(42));
    println!("{}", (Foo::new(|a| a + 1).foo)(42));
}

// Trait object reference
struct Foo3<'a> {
    pub foo: &'a dyn Fn(usize) -> usize,
}

impl<'a> Foo3<'a> {
    fn new(foo: &'a dyn Fn(usize) -> usize) -> Self {
        Self { foo }
    }
}

fn trait_object_reference() {
    let foo = Foo3 { foo: &|a| a + 1 };
    println!("{}", (foo.foo)(42));
    println!("{}", (Foo::new(&|a| a + 1).foo)(42));
}

// Function pointer
struct Foo4 {
    pub foo: fn(usize) -> usize,
}

impl Foo4 {
    fn new(foo: fn(usize) -> usize) -> Self {
        Self { foo }
    }
}

fn function_pointer() {
    let foo = Foo { foo: |a| a + 1 };
    println!("{}", (foo.foo)(42));
    println!("{}", (Foo::new(|a| a + 1).foo)(42));
}

fn main() {
    unboxed_closure();
    boxed_trait_object();
    trait_object_reference();
    function_pointer();
}
