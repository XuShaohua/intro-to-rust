# 变量 Variables

常见的声明变量的表达式, 使用 `let` 来声明, 格式如下:

```rust, ignore
let name: type = expr;
```

这里, `type` 代表变量的类型, 大部分情况可以直接省去不写, 编译器会根据上下文自动推定.
`expr` 是一个表达式, 使用该表达式的值来初始化变量, 也可以省去, 在之后再初始化该变量.

```rust
{{#include assets/let-if.rs:5: }}
```

一个代码块就是一个表达式, 所以它可以为一个变量赋值.

```rust
{{#include assets/let-for.rs:5: }}
```

## 下划线表达式 _

下划线表达式用于占位, 它只能用于赋值语句的左边.

```rust
let pos = (1, 2);
let y: i32;
(_, y) = pos;
assert_eq!(y, 2);
```

跟它很相近的写法是通配符模式(wildcard pattern), 使用通配符重写上面的代码:

```rust
let pos = (1, 2);
let (_, y) = pos;
assert_eq!(y, 2);
```