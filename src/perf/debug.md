# 调试模式 Debug

## 编译 debug 模式

可以用 cargo 生成:

```bash
cargo build --debug foo_bar
```

也可以手动调用 `rustc`, 生成 debug 模块的目标:

```bash
rustc -g foo.rs
```

如果感觉性能不好的话, 可以加上 `O2` 选项:

```bash
rustc -g -O foo.rs
```

## `debug_assert!()` 宏

`debug_assert!()` 宏类似于 C 语言中的 `assert()` 宏, 只在 `debug` 模式下有效.
在 `release` 模式下, 被展开为空白代码.

## debug_assertions 属性

`#[cfg(debug_assertions)]` 用于判断是否处于 debug 编译模式, 通常在调试模式下, 会打印出更多的调试代码.

看下面的例子:

```rust
#[allow(unused_variables)]
fn main() {
    let keys = [1, 1, 2, 3, 5, 8, 13, 21];
    #[cfg(debug_assertions)]
    for i in 1..keys.len() {
        assert!(keys[i - 1] <= keys[i]);
    }
}
```

## dbg 宏

这个宏用于打印表达式本身的内容, 代码位置以及其返回值到错误输出 (stderr), 比 `eprintln!()` 等要更为快捷,
而且它并不会影响表达式本身的执行 (但是有副作用). 先看几个例子:

```rust
{{#include assets/dbg-macro.rs:5:}}
```

上面的代码, 输出如下调试信息:

```text
{{#include assets/dbg-macro.txt}}
```

可以发现, `dbg!` 宏对于跟踪递归代码非常有效, 它能打印出类似函数调用栈的信息.

## 获取当前代码的位置信息

## 获取函数调用者的信息

## 参考

- [条件编译](../crates/conditional-compilation.md)
