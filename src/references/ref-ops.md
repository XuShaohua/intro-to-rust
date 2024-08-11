# 引用的操作

## 引用的赋值

在 C++ 中, 引用在初始化之后, 其指向的内存地址便不再能被修改.
在 Rust 中, 却不是这样的, 引用可以再被指向别的地址:

```rust
let x = 42;
let y = 3;
let mut r = &x;
if y > 0 {
  r = &y;
}
```

这里, 我们使用 `let mut r = &x;` 因为要修改 `r` 指向的地址, 所以要给它加 `mut`
来修饰.

比较两个内存是否是同一个地址, 可以使用 `std::ptr::eq()`.

## 创建引用的引用

## 解引用 Dereference

尽管引用是一种指针, 但因为它使用很频繁, Rust 在 `.` 操作符被使用时, 若有必要会
自动直接访问指针所指向的内存 deref 而不需要像 C 语言那样使用 `*ref`. 这个
功能被称为 implicit dereference`.

同时, 如有必要, `.`操作符还会隐式地借用其左操作值的引用:

```rust
let mut v = vec![1, 3, 2];
v.sort();
(&mut v).sort();
```

其中 `v.sort()` 被隐式去转换成了 `(&mut v).sort()`.

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

## 引用之间的比较

以下示例中, `assert!(ref_x == ref_y);` 进行的是值的比较;
而 `assert!(!std::ptr::cmp(ref_x, ref_y));` 则比较了两个引用本身的内存地址,
所以它们是不相等的.

```rust
fn main() {
    let x = 42;
    let y = 42;
    let ref_x = &x;
    let ref_y = &y;

    assert!(ref_x == ref_y);
    assert!(!std::ptr::eq(ref_x, ref_y));
}
```

## 引用永远是有效的

引用不能是空指针或者别的无效值, 它们在编译期就已经确认了一直是有效的.

`Option<&T>` 表示可以是无效引用, 其值为 None, 类似于 C++ 中的 nullptr. 要么其值
是一个有效的引用. 这个写法不会占用额外的内存.
