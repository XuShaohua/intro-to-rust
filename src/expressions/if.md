# if 条件判断

## if let

用于简化 match 表达式, 在条件比较单一的时候, 使用 `if let` 表达式可读性更高.

```rust
enum Foo {
    Bar,
    Baz,
    Qux(u32)
}

fn main() {
    let a = Foo::Bar;
    if let Foo::Bar = a {
        println!("a is bar!");
    }
}
```

以上代码片段, 我们不需要给 `Foo` 实现 `std::cmp::PartialEq` 这个 trait, 就可以对它的值进行比较, 类似于以下实现:

```rust
#[derive(PartialEq)]
enum Foo {
    Bar,
    Baz,
    Qux(u32)
}

fn main() {
    let a = Foo::Bar;
    if a == Foo::Bar {
        println!("a is bar!");
    }
}
```

这里之所以可以用 `==` 是因为 `Foo` 实现了 `PartialEq` trait.