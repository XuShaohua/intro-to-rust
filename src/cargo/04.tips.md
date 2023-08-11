
# Tips

在使用 `cargo watch` 时, 默认会显示很多的 warning 信息, 尤其是在代码重构期间,
可以先禁用 rustc 的 warning:

```bash
RUSTFLAGS=-Awarnings cargo watch
```
