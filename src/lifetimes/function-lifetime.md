# 函数中的生命周期

当函数只接受一个引用作为参数, 而且也返回一个引用时, rust 会假设这两个引用有
相同的生命周期. 这样做主要是为了简化函数声明. 比如:

```rust
fn smallest(v: &[i32]) -> &i32 {
    let mut s = &v[0];
    for r in &v[1..] {
        if *r < *s {
            s = r;
        }
    }
    s
}

fn main() {
    let s;
    let parabola = [9, 4, 3, 1, 1, 4, 9];
    s = smallest(&parabola);
    println!("s: {}", s);
}
```