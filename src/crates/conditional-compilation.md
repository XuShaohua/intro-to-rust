# 条件编译 Conditional compilation

- `#[cfg(...)]` 在编译期使用
- `cfg!(...)` 宏可以在程序运行期动态判断
- `#[cfg_attr(...)]` 可以根据传入的属性来设置新的属性, 比如根据不同的平台来引入不同的源文件

这三种写法使用同样的配置条件, 配置条件会返回 true 或者 false. 同时可以组合使用多个配置条件:

| 组合      | 逻辑操作  | 描述                      | 示例                         | 
|---------|-------|-------------------------|----------------------------|
| `all()` | `逻辑与` | 所有的配置条件都成立, 它才返回 true   | `all(unix, )`              |
| `any()` | `逻辑或` | 只要有其中一个配置条件成立, 就返回 true | `any(unix, osx)`           |
| `not()` | `逻辑非` | 配置条件不成立时, 才返回 true      | `not(target_os = "linux")` |

## 传入自定义条件

- 编译时传入参数: `rustc --cfg is_nightly foo.rs`
- 在 `build.rs` 脚本中, 向 stdout 输出配置: `println!("cargo:rustc-cfg=is_nightly");`

之后就可以在代码中使用这个 `is_night` 属性了:

- `#[cfg(is_nightly)]`
- `#![cfg_attr(is_nightly, feature(llvm_asm))]`, 当 `is_nightly` 属性被设置时, 引入 `llvm_asm` 特性

## cfg 属性

cfg 支持作为属性声名及作为宏定义:

```rust
#[cfg(target_os = "linux")]
fn are_you_linux() -> bool {
  return true;
}

#[cfg(not(target_os = "linux"))]
fn are_you_linux() -> bool {
  return false;
}
```

可以设置只编译适合某个目标平台的代码, 比如下面的例子, 指定在 arm64 架构下 `platform` 模块的源文件:

```no_run
#[cfg(all(
    any(target_os = "linux", target_os = "android"),
    target_arch = "aarch64"
))]
#[path = "platforms/linux-aarch64/mod.rs"]
mod platform;
```

## cfg_attr 属性

cfg_attr 属性算是 cfg 属性的语法糖, 它根据配置条件来设置相应的属性.

上面的代码片段可以用 `cfg_attr` 来重写:

```no_run
#[cfg_attr(all(
    any(target_os = "linux", target_os = "android"),
    target_arch = "aarch64"
), path = "platforms/linux-aarch64/mod.rs")]
mod platform;
```

另一个示例片段, 当 `is_nightly` 属性被设置时, 启用 `llvm_asm` 特性:
`#![cfg_attr(is_nightly, feature(llvm_asm))]`

## cfg!() 宏

在编译时, 所有的分支代码都被编译; 然后在运行期间, 根据 `cfg!()` 宏返回值是 true 还是 false, 来选择相应的分支条件.

比如下面的代码片段:

```rust
fn are_you_linux() -> bool {
  if cfg!(target_os = "linux") {
    return true;
  } else {
    return false;
  }
}
```

# debug_assertions

`#[cfg(debug_assertions)]` 用于判断是否处于 debug 编译模式:

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

`debug_assert!()` 宏的内部也是使用的这个条件.

## 参考

- [Conditional compilation](https://doc.rust-lang.org/reference/conditional-compilation.html)