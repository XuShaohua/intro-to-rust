# mem::take() 函数

与 mem::swap() 类似, 但是使用 `T::default()` 来替换.

```rust
use std::mem;

#[derive(Debug, Default)]
struct Point {
    x: f32,
    y: f32,
}

fn main() {
    let mut p = Point { x: 3.0, y: 4.0 };
    let old_p = mem::take(&mut p);
    assert_eq!(old_p.x, 3.0);
    assert_eq!(p.x, 0.0);
    assert_eq!(p.y, 0.0);
}
```