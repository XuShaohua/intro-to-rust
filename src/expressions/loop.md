# 循环 Loop

## loop 循环

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

先看一个基于 [RustQuiz#20](https://dtolnay.github.io/rust-quiz/20) 修改的示例程序:

```rust
{{#include assets/break-if.rs:5: }}
```

## 跳过当前循环 continue

## for 循环

`for .. in` 表达式用于遍历一个循环体.

```rust
fn main() {
    for i in 1..101 {
        println!("i * i = {}", i * i);
    }
}
```

它还有一个变体, 用于包含超始值及终止值:

```rust
fn main() {
    for i in 1..=100 {
        println!("i * i = {}", i * i);
    }
}
```

默认情况下, for 在遍历一个集合时会使用 `Iterator` trait 的 `into_iter()` 方法.
除了这个方法之外, 还有另外两个方法:

* `iter()` 以引用的方法遍历集合, 不改变集合中的值, 该容器接下来还可以被使用
* `into_iter()` 从集合中解析出里面的数据, 一旦遍历完它, 该集合接下来不可再被使用,
  相当于把这个集合 `move` 到了这个循环中
* `iter_mut()` 以可变引用的方法遍历集合, 可以改变集合中的值, 该集合在接下来还可被使用

## while 循环

while 的一般写法:

```rust

```

## while let 循环

