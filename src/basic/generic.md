
# Generics

## 偏特化
可以像 C++ 一样, 实现偏特化.
```rust
struct GeneralVal<T>(T);

impl GeneralVal<i32> {
    pub fn int_value(&self) -> i32 {
        return self.0;
    }
}

impl GeneralVal<f64> {
    pub fn double(&self) -> f64 {
        return self.0 * 2.0;
    }
}

impl<T> GeneralVal<T> {
    pub fn value(&self) -> &T {
        return &self.0;
    }
}

fn main() {
    let v = GeneralVal(42);
    println!("val: {}", v.int_value());

    let f = GeneralVal(3.14);
    println!("double: {}", f.double());
}
```

## Where
可以使用 `where` 来指定复杂的泛型:
```rust
use std::fmt::{Debug, Display};

fn print_info<T>(t: T)
where
    T: Debug + Display + Clone,
{
    println!("debug: {:?}, display: {}", t, t.clone());
}

fn main() {
    let s = "Hello, world".to_string();
    print_info(s);
}
```

## Associated types
对于复杂的泛型, 可以使用关联类型这种写法:
```rust
trait Contains {
    type A;
    type B;

    fn contains(&self, _: &Self::A, _: &Self::B) -> bool;
    fn first(&self) -> i32;
    fn last(&self) -> i32;
}

struct Container(i32, i32);

impl Contains for Container {
    type A = i32;
    type B = i32;

    fn contains(&self, n1: &i32, n2: &i32) -> bool {
        return (&self.0 == n1) && (&self.1 == n2);
    }

    fn first(&self) -> i32 {
        return self.0;
    }

    fn last(&self) -> i32 {
        return self.1;
    }
}

fn difference<C: Contains>(c: &C) -> i32 {
    return c.first() - c.last();
}

fn main() {
    let c = Container(42, 41);
    println!("difference: {}", difference(&c));
}
```

## PhantomData
使用 `PhantomData`, 用于处理编译期生命周期的问题, `PhantomData` 本身不占用内存.
以下示例中, 结构体 `S` 的大小跟 `i32` 是一致的:
```rust
use std::marker::PhantomData;
use std::mem::size_of_val;

struct S<A, B> {
    first: A,
    phantom: PhantomData<B>,
}

fn main() {
    let s: S<char, f64> = S {
        first: 'a',
        phantom: PhantomData,
    };

    println!("size of s: {}", size_of_val(&s));
}
```

## Trait
在 trait 里的方法, 也可以指定生命周期:
```rust
#[derive(Debug)]
struct Borrowed<'a> {
    x: &'a i32,
}

impl<'a> Default for Borrowed<'a> {
    fn default() -> Self {
        Self { x: &42 }
    }
}

fn main() {
    let b: Borrowed = Default::default();
    println!("b is {:?}", b);
}
```
