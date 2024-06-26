# 别名 Type Alias

使用 `type` 可用于定义一个类型别名, 类似于 C 中的 `typedef` 或者 C++ 中的 `using TypeA = TypeB;`.

使用 `use` 可将某模块中的内容或某枚举类型中的元素导入到当前作用域, 跟 C++ 中的 `using` 有些类似.

```C++
using GlyphId = int32_t;
```

同样的类型在 Rust 中可以这样写:

```rust
pub type GlyphId = i32;
```

还可以使用不流行的写法:

```rust
pub use i32 as GlyphId;
```

在导入外部的类型时, 可以使用 `use Foo as Bar` 的语法给它加上别名:

```rust
{{#include assets/use-argb-color.rs:5: }}
```

