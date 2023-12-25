# 文档与注释

- 行注释, 用于注释单行代码, `// single line`
- 块注释, 用于注释多行代码, `/* multiple lines */`
- 模块注释, 通常放在模块的头部, 用于说明本模块的功能等基本信息, `//! `
- 模块内的代码注释, 用于描述类型或者函数的功能, `/// `
- 注释支持 `markdown` 格式化

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

生成在线文档:
```bash
$ cargo doc
```
