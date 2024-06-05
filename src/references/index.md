# 引用 Reference

尽管引用是一种指针，但因为它使用很频繁，Rust 在 `.` 操作符被使用时，若有必要会
自动直接访问指针所指向的内存（deref），而不需要像 C 语言那样使用 `*ref`。这个
功能被称为 implicit dereference`。

同时，如有必要，`.`操作符还会隐式地借用其左操作值的引用：

```rust
let mut v = vec![1, 3, 2];
v.sort();
(&mut v).sort();
```

其中 `v.sort()` 被隐式去转换成了 `(&mut v).sort()`。

有两类, mut reference 以及 shared reference.

```rust
let ref value = 42;
```

等同于以下写法:

```rust
let value = &42;
```

在 `match` 进行模式匹配时, 可以使用 `ref` 及 `ref mut` 来从 struct/tuple 中
解析出需要的元素:

```rust
#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let mut p = Point { x: 0, y: 5 };
    match p {
        Point { x: 0, ref mut y } => *y = 3,
        _ => println!("Do nothing!"),
    }
    println!("p: {:?}", p);
}
```
