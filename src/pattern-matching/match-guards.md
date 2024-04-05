# 使用条件匹配 Match Guards

```rust
#[derive(Debug, Default)]
pub struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let point = Point::default();
    match point {
        Point { x, y: 0 } => println!("on x axes: {}", x),
        Point { x: 0, y } => println!("on y axes: {}", y),
        Point { x: 0, y: 0 } => println!("original pos: (0, 0)"),
        Point { x, y } if x == y => println!("x == y: {}, {}", x, y),
        Point { x, .. } => println!("Other position: {}, ignoring y value!", x),
    }
}
```

## 指定值的范围并绑定变量 Binding

```rust
fn main() {
    let value = 42;
    match value {
        0 => println!("0"),
        n @ 1..13 => println!("child: {}", n),
        n @ 14..18 => println!("teen: {}", n),
        _ => println!("other"),
    }
}
```