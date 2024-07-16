# 代码块表达式 Block

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

### 为块表达式设置属性

### const 块表达式

### unsafe 块表达式

参考 [unsafe 块表达式](../unsafe/unsafe-block.md)

### async 块表达式

参考 [理解 async/await](../async/async-await.md)