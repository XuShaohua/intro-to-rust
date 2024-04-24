# 别名

使用 `type` 可用于定义一个类型别名, 类似于 C 中的 `typedef` 或者 C++ 中的 `using TypeA = TypeB;`.

使用 `use` 可将某模块中的内容或某枚举类型中的元素导入到当前作用域, 跟 C++ 中的 `using` 有些类似.

```C++
using GlyphId = int32_t;
```

同样的类型, 在Rust中可以这样写:

```rust, no_run
pub type GlyphId = i32;
```