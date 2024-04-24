# 使用条件匹配 Match Guards

## 指定值的范围并绑定变量 Binding

```rust
fn main() {
    let value = 42;
    match value {
        0 => println!("0"),
        n @ 1..=12 => println!("child: {n}"),
        n @ 13..=18 => println!("teen: {n}"),
        _ => println!("other"),
    }
}
```