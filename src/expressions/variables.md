# 变量 Variables

常见的声明变量的表达式, 使用 `let` 来声明, 格式如下:

```rust, ignore
let name: type = expr;
```

这里, `type` 代表变量的类型, 大部分情况可以直接省去不写, 编译器会根据上下文自动推定.
`expr` 是一个表达式, 使用该表达式的值来初始化变量, 也可以省去, 在之后再初始化该变量.

```rust
{{#include assets/variables.rs:5: }}
```

一个代码块 (block expression) 就是一个表达式, 所以它可以为一个变量赋值. 看下面的例子:

```rust
{{#include assets/let-if.rs:5: }}
```

要注意分号的位置 `;`, 在 if 语句的最后一个表达式是不包含分号的. 另一个类似的例子:

```rust
{{#include assets/let-for.rs:5: }}
```

有时, 会在代码块表过式中自动声明本地的临时变量, 该变量的作用域只限于代码块内部 ( 即 `{ ... }`).
如果在代码块之外有同名的变量, 那么该变量会在代码块内部被遮盖掉 (shadow). 看下面的例子:

```rust
{{#include assets/block-variable.rs:5: }}
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

## 变量默认不可更改

这个特性跟 C/C++ 有很大的不同, 在 C/C++ 中声明的变量, 默认都是可以修改它的值的, 除非显式地声明为只读:

```C
int x = 42;
x += 1;
assert(x == 43);
```

而 Rust 中的变量默认是不可更改的, 除非加上 `mut` 修饰符, 显式地声明为可更改的:

```rust
let mut x = 42;
x += 1;
assert_eq!(x, 43);

let y = 42;
// 下面的表达式会编译失败.
// y += 1;
```