# 循环 Loop

Rust 支持四多循环表达式的写法, 下面列出它们的基本语法:

```rust, ignore
loop {
  block
}

for pattern in iterator {
  block
}

while condition {
  block
}

while let pattern = expr {
  block
}
```

每种写法都应各自的使用场景, 本节会依次介绍它们.

## loop 循环

最简单的循环语句就是 `loop { block }`, 它相当于 C 语言中的:

```c
while (true) {
  block
}
```

但是, Rust 单独引入了一个 `loop` 关键字来表示一个无限循环语句.

终止无限循环的方法也有几种:

- `break` 表达式, 立即终止循环
- `return` 表达式, 立即终止循环并退出当前函数
- 抛出错误, 立即终止循环. 退出当前函数并将错误向上继续抛出
- 抛出 panic, 当前线程直接终止
- 调用 `std::process::exit()` 退出程序

使用 `return` 表达式终止循环的例子:

```rust
{{#include assets/loop-return.rs:5: }}
```

如果 loop 循环的内部代码块执行时产生了错误 (`Result<T, E>`), 该错误又没有在代码块内部捕获,
而是将错误向函数调用处抛出了, 那么就会立即终止当前的循环.
下面的示例程序会尝试读取 `shadow` 文件, 但因为没有读取权限, 就会产生 `io::Error`, 进而终止整个循环:

```rust
{{#include assets/loop-with-result.rs:5: }}
```

## 使用 break 终止循环

`break` 表达式的语法如下:

```text
break [LifeTime | Label] [Expression]
```

可以发现 break 表达式比在其它语言中要更为复杂, 它后面通常都留空, 只立即终止当前循环;
但也可以跟随标签(label) 或者表达式

```rust
{{#include assets/break-loop.rs:5: }}
```

### break 跳转到最外层循环

多层嵌套的循环语句, 可以使用 `break Label` 跳出来.

```rust
{{#include assets/break-labeled-loop.rs:5: }}
```

### 循环中使用 break 来返回值

loop 表达式也可以有返回值:

```rust
{{#include assets/break-loop-with-value.rs:5: }}
```

### 代码块使用 break 来返回值

```rust
{{#include assets/break-labeled-block.rs:5: }}
```

### 深入理解 break 表达式

先看一个基于 [RustQuiz#20](https://dtolnay.github.io/rust-quiz/20) 修改的示例程序,
考虑考虑程序运行的结果是什么样的:

```rust
{{#include assets/break-if.rs:5: }}
```

上面的代码中, `break1_expand()` 函数是对 `break1()` 的重新格式化, 这样更容易阅读:

- `break { println!("1"); }` 这个表达式作为 `if` 表达式的条件, 会优先被执行, 会打印出 `1`
- 它执行的结果是 `()`, 所以 `if` 表达式中的条件不成立, if 表达式内的代码块不会被执行
- 然后立即终止本循环

可以看一下它的 MIR 代码:

```rust, ignore
{{#include assets/break-if.mir:3:36 }}
```

而 `break2()` 就更奇怪了, 它与 `break()` 相比, 只是少了一对小括号. `break2_expanded()` 是它的展开样式,
可以发现 `if break () { xxx }` 表达式是核心, `break ()` 表达式返回值为空, 所以 `if` 表达式条件判断不成立,
if 语句内的代码块不会被执行.

`break2()` 和 `break2_expanded()` 的 MIR 代码如下:

```rust, ignore
{{#include assets/break-if.mir:73:91 }}
```

可以看出来, 这两个函数其实什么都不会做的, 类似于 `noop()` 函数:

```rust, ignore
{{#include assets/break-if.mir:93:99 }}
```

## 跳过当前循环 continue

在循环语句中使用 `continue` 来跳过当前循环中的后续代码, 继续执行下个循环.

`continue` 表达式的语法如下:

```rust, ignore
continue [Lifetime | Label ]
```

可以看到, `continue` 表达式也是支持标签的, 用于快速跳出多层循环嵌套.

先看一个例子, 展示 continue 的一般用法:

```rust
{{#include assets/continue-loop.rs:5: }}
```

下面的例子, 展示了如何使用 `continue Label` 跳出多层循环:

```rust
{{#include assets/continue-labeled-loop.rs:5: }}
```

## for 循环

`for .. in` 表达式用于遍历一个迭代器.

```rust
{{#include assets/for-in.rs:5: }}
```

默认情况下, for 在遍历一个集合时会使用 `Iterator` trait 的 `into_iter()` 方法.
除了这个方法之外, 还有另外两个方法:

* `iter()` 以引用的方法遍历集合, 不改变集合中的值, 该容器接下来还可以被使用
* `into_iter()` 从集合中解析出里面的数据, 一旦遍历完它, 该集合接下来不可再被使用,
  相当于把这个集合 `move` 到了这个循环中
* `iter_mut()` 以可变引用的方法遍历集合, 可以改变集合中的值, 该集合在接下来还可被使用

## while 循环

while 的一般写法跟在 C/C++ 语言中没有多少差别, 当条件成立时, 就执行内部的代码块; 当条件不成立时, 就终止循环.
看一个小示例:

```rust
{{#include assets/while.rs:5: }}
```

另一个小示例, 猜数字:

```rust
{{#include assets/while-break.rs:5: }}
```

## while let 循环

`while let` 表达式用于支持模式匹配, 当匹配成功时, 会执行 while 语句内的代码; 如果匹配失败了, 就终止循环.

下面的示例程序展示了单链表的一种写法, 注意里面的 `len()` 函数和 `debug_print()` 函数, 它们展示了 `while let` 的用法:

```rust
{{#include assets/while-let.rs:5: }}
```

## 为什么引入 `loop` 表达式

上文已经介绍了 loop 和 while 表达式, 那么问题来了, 既然 `loop { block }` 就相当于 `while true { block }`,
那为什么 Rust 还要单独引入一个新的关键字呢? 像 C/C++ 这样的语言并不需要这样.

先看一个示例代码:

```rust, editable
{{#include assets/why-loop.rs:5: }}
```

上面的 `fibonacci()` 函数中, 如果把 `loop` 换成 `while true`, 就会编译失败.

这个是 rustc 编译器比较特殊的地方, 因为它支持 flow-sensitive analysis. 在 if/while 等支持条件判断的语句中,
它不会直接判断 `condition` 表达式的值是 true 还是 false; 它会假设条件的值既可以是 true, 也可以是 false,
然后继续分析 if/while 语句内部的代码块. 很显然, 上面的代码中, 如果把 `loop` 换成 `while true`,
当 rustc 编译器检查代码时, 它就会发现 `fibonacci()` 函数在不同的分支判断情况下可能返回不同类型的值,
而这是不被允许的.

遇到这样的情况, 就直接用 `loop` 表达式.

同样的, 看另一个示例, 它来自某个服务器端模块代码, 初始化好之后, 服务就开始一直运行下去了, 直到整个进程退出,
`run_loop()` 函数的返回值类型很不常见, `!` 表示 `never type`.

```rust, ignore
impl Server {
    pub async fn run_loop(&mut self) -> ! {
        loop {
            tokio::select! {
                Some(cmd) = self.dispatcher_receiver.recv() => {
                    if let Err(err) = self.handle_dispatcher_cmd(cmd).await {
                        log::error!("Failed to handle dispatcher cmd: {:?}", err);
                    }
                }
                Some(cmd) = self.server_ctx_receiver.recv() => {
                    self.handle_server_ctx_cmd(cmd).await;
                }
            }
        }
    }
}
```