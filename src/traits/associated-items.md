# 关联的项目 Associated Items

前文提到了, trait 主要用于在类型之间建立联系. 除了之前介绍过的, 可以在 trait 内定义
相关联的函数方法之外, 还可以为它绑定其它类型的资源.

本节主要介绍三种:

- 关联函数 associated functions
- 关联类型 associated types
- 关联常量 associated consts

# 关联函数 Associated Functions

## 关联类型 Associated Types

对于复杂的泛型, 可以使用关联类型这种写法:

```rust
{{#include assets/associated-type.rs:5:}}
```

## 关联常量 Associated Consts

```rust
{{#include assets/float.rs:5:}}
```

## 参考

- [Associated Items](https://doc.rust-lang.org/reference/items/associated-items.html)