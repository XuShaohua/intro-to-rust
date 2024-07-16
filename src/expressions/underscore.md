# 下划线表达式 Underscore

下划线表达式 `_` 用于占位, 它只能用于赋值语句的左边.

```rust
let pos = (1, 2);
let y: i32;
(_, y) = pos;
assert_eq!(y, 2);
```

跟它很相近的写法是通配符模式 (wildcard pattern), 使用通配符重写上面的代码:

```rust
let pos = (1, 2);
let (_, y) = pos;
assert_eq!(y, 2);
```