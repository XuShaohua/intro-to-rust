# 匹配值 Matching Values

`match` 可以匹配一个值, 几个值, 一个范围, 或者任意值.

```rust
fn main() {
    let number = 13;

    match number {
        1 => println!("One!"),
        2 | 3 | 5 | 7 | 11 => println!("A prime number"),
        13..=19 => println!("A teen!"),
        _ => println!("Ain't special"),
    }
}
```

## 匹配引用

```rust
fn main() {
    let val = 42;
    let ref ref_value = val;
    match *ref_value {
        v => assert_eq!(v, val),
    }

    match ref_value {
        &v => assert_eq!(v, val),
    }

    match val {
        ref v => assert_eq(v, ref_value),
    }
}
```