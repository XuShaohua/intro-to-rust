# loop 循环

多层嵌套的循环语句, 可以使用 label 跳出来.

loop 表达式也可以有返回值:

```rust
fn main() {
    let mut counter = 0;
    let result = loop {
        counter += 1;
        if counter == 10 {
            break counter * 2;
        }
    };
    assert_eq!(result, 20);
}
```
