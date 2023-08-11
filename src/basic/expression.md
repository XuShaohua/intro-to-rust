
# Expressions

一个代码块就是一个表达式, 所以它可以为一个变量赋值.
```rust
let x = {
  let mut sum = 0;
  for i in 1..10 {
    sum += i;
  }
  sum
}
```

在 C 语言中, expression 有值, statement 则没有.

使用 label 可以中断最外层的循环:
```rust
:outer
for i in 0..100 {
  for j in 0..i {
    if i * j > 200 {
      break 'outer;
    }
  }
}
```
