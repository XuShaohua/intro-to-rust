# 条件编译

## cfg

`#[cfg(...)]` 在编译器应用.
`cfg!(...)` 可以在运行期动态起作用.

自定义条件:

* 编译时传入参数: `rustc --cfg is_nightly foo.rs`
* `build.rs` 脚本中向 stdout 输出配置: `println!("cargo:rustc-cfg=is_nightly");`

之后就可以在代码中使用这个 `is_night` 属性了:

* `#[cfg(is_nightly)]`
* `#[cfg_attr(is_nightly, feature(llvm_asm))]`, 当 `is_nightly` 属性被设置时, 引入
  `llvm_asm` 特性.

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

或者使用宏:

```rust
fn are_you_linux() -> bool {
  if cfg!(target_os = "linux") {
    return true;
  } else {
    return false;
  }
}
```

可以设置只编译适合某个目标平台的代码, 比如下面的例子, 只编译 arm64 架构:

```no_run
#[cfg(all(
    any(target_os = "linux", target_os = "android"),
    target_arch = "aarch64"
))]
#[path = "platforms/linux-aarch64/mod.rs"]
mod platform;
```

## cfg_attr

条件编译, 比如 `notify` 库提供的 `AccessKind` 枚举:

```rust
/// An event describing non-mutating access operations on files.
#[derive(Clone, Debug, Eq, Hash, PartialEq)]
#[cfg_attr(feature = "serde", derive(Serialize, Deserialize))]
#[cfg_attr(feature = "serde", serde(tag = "kind", content = "mode"))]
#[cfg_attr(feature = "serde", serde(rename_all = "kebab-case"))]
pub enum AccessKind {
    /// The catch-all case, to be used when the specific kind of event is unknown.
    Any,

    /// An event emitted when the file is read.
    Read,

    /// An event emitted when the file, or a handle to the file, is opened.
    Open(AccessMode),

    /// An event emitted when the file, or a handle to the file, is closed.
    Close(AccessMode),

    /// An event which specific kind is known but cannot be represented otherwise.
    Other,
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