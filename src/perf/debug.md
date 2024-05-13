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

## 参考

- [条件编译](../crates/conditional-compilation.md)
