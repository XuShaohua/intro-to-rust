# Tests

* `cargo test`
* `cargo test --doc`

## dev-dependencies
如果在运行测试实例时, 需要额外的库, 可以在 `Cargo.toml` 中的 `[dev-dependencies]` 中加入需要的库.


## 集成测试
将集成测试代码放在独立的 `tests/` 目录里, 它们也是普通的 `.rs` 文件.
