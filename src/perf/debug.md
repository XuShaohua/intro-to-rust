# Debug

## 编译 debug 模式

可以用 cargo 生成:

```bash
cargo build --debug foo_bar
```

也可以手动调用 `rustc`, 生成 debug 模块的目标:

```bash
rustc -g foo.rs
```

## debug_assert

`debug_assert!()` 宏类似于 C 语言中的 `assert()` 宏, 只在 `debug` 模式下有效.
在 `release` 模式下, 被展开为空白代码.

## 条件编译

`#[cfg(debug_assertions)]` 用于判断是否处于 debug 编译模式, 可以用它来做条件编译:

```rust
#[allow(unused_variables)]
fn main() {
    let keys = [1, 1, 2, 3, 5, 8, 13, 21];
    #[cfg(debug_assertions)]
    for i in 1..keys.len() {
        debug_assert!(keys[i - 1] <= keys[i]);
    }
}
```