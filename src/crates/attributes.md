# 属性 Attributes

如果属性对整个 crate 都有作用的话, 使用 `#![crate_attribute]` 写法; 如果只对当前
module, 某个函数等起作用的话, 使用 `#[module_attribute]` 写法.

设置整个 crate 的属性 `#![crate_attribute]`; 设置整个 module 的属性, `#[crate_attribute]`, 少了一个 `!` 号.

它多种语法形式:

| 语法                            | 描述                | 示例                                                 | 
|-------------------------------|-------------------|----------------------------------------------------|
| `#[attribute = "value"]`      | 设定属性值             | `#![crate_type = "lib"]`                           |
| `#[attribute(key = "value")]` | key-value 形式, 键值对 | `#![cfg(target_os = "linux")]`                     |
| `#[attribute(value)]`         | 单个标识符             | `#[allow(dead_code)]`, 对某个模块及函数禁用 `dead_code` lint |

接下来, 我们介绍一些常用的属性设置.

## inline

用于提示 rustc 编译器, 把该函数标记为内联函数(inline function).

所谓的内联函数, 就是把函数体内的代码直接插入到该函数的调用处, 这样可以在代码里减少一个函数调用的成本.

看下面的一个示例代码, 注释部分是编译器可能生成的代码, 它会将 `Point` 中定义的函数体直接展开:

```rust
{{#include assets/inline.rs:5: }}
```

除了上面的默认写法之外, 还有另外两种写法:
- `#[inline(always)]`, 建议编译器总是把该函数内联
- `#[inline(never)]`, 建议编译器不把该函数内联


比如标准库里的 `Backtrace::capture()` 函数, 它就提示编译器不要做内联.

```rust, ignore
// From: std/src/backtrace.rs

/// Capture a stack backtrace of the current thread.
///
/// ...
///
#[stable(feature = "backtrace", since = "1.65.0")]
#[inline(never)] // want to make sure there's a frame here to remove
pub fn capture() -> Backtrace {
    if !Backtrace::enabled() {
        return Backtrace { inner: Inner::Disabled };
    }
    Backtrace::create(Backtrace::capture as usize)
}
```

### 参考
- [Inline function on wikipedia](https://en.wikipedia.org/wiki/Inline_function)

## 相关知识

- [条件编译](./conditional-compilation.md)
- [Attributes](https://doc.rust-lang.org/reference/attributes.html)
