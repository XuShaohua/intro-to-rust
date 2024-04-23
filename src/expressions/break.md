# 终止循环 break

## 使用标签 label

使用 label 可以中断最外层的循环:

```rust
fn main() {
    let mut sum = 0;

    'outer:
    for i in 0..100 {
        for j in 0..i {
            sum += j;
            if i * j > 200 {
                break 'outer;
            }
        }
    }
    assert_eq!(sum, 560);
}
```
