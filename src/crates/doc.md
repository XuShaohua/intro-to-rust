# Doc

使用 `///` 开头的行注释, 就可以转为代码文档.
```rust
/// Calcuate n!
pub fn factorial(n: u32) -> u64 { ...  }
```

等效于使用 `#[doc]` 属性:
```rust
#[doc = "Calcuate n!"]
pub fn factorial(n: u32) -> u64 { ...  }
```

对于 crate/module 级别的注释, 可以使用 `//! xxxx ` 的形式.

支持 `markdown` 格工化.

生成在线文档:
```bash
$ cargo doc
```
