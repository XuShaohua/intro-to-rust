
# Debug

## debug_assert
`debug_assert!()` 宏类似于 C 语言中的 `assert()` 宏, 只在 `debug` 模式下有效.
在 `release` 模式下, 被展开为空白代码.

## 编译 debug 模式
可以用 cargo 生成:

```bash
cargo build --debug foo_bar
```

也可以手动调用 `rustc`, 生成 debug 模块的目标:
```bash
rustc -g foo.rs
```