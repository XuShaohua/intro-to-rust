# Expressions

一个代码块就是一个表达式, 所以它可以为一个变量赋值.

```rust
fn main() {
    let x = {
        let mut sum = 0;
        for i in 1..10 {
            sum += i;
        }
        sum
    };
}
```

在 C 语言中, expression 有值, statement 则没有.