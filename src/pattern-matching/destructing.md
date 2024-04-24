# 解构 Destructing

## 解构结构体 structs

```rust
#[derive(Debug, Default)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let point = Point::default();

    match point {
        Point { x, y: 0 } => println!("on x axes: {}", x),
        Point { x: 0, y } => println!("on y axes: {}", y),
        Point { x: 0, y: 0 } => println!("original pos: (0, 0)"),
        Point { x, .. } => println!("Other position: {}, ignoring y value!", x),
    }
}
```

## 解构元组 tuple

```rust
fn main() {
    let pair = (0, -2);
    match pair {
        (x, 0) => println!("On X axes: {}", x),
        (0, y) => println!("On Y axes: {}", y),
        _ => println!("any other point"),
    }

    let point = (3, 1);
    match point {
        (x, 0) => println!("on x axes: {}", x),
        (0, y) => println!("on y axes: {}", y),
        (0, 0) => println!("original pos: (0, 0)"),
        _ => println!("Other positions!"),
    }
}
```

## 解构枚举 enums

```rust
enum Weekday {
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
}

fn main() {
    let weekday = Friday;

    match weekday {
        Weekday::Monday => println!("On Monday!"),
        Weekday::Tuesday => println!("On Tuesday!"),
        Weekday::Wednesday => println!("On Wednesday!"),
        _ => println!("Other days!"),
    }
}
```

## 解构引用

```rust, no_run
let ref v = 42;
```

与下面的表达式是一样的:

```rust, no_run
let v = & 42;
```