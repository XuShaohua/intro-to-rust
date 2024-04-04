# 泛型 Traits Generic Traits

在 trait 里的方法, 也可以指定生命周期:

```rust, no_run
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

## Const generics

TODO

# 参考

- [Reference of Generics](https://doc.rust-lang.org/reference/items/generics.html)
