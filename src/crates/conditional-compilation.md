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

```rust, ignore
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

```rust, ignore
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

## target_arch

键值形选项, 用于判定目标的CPU架构, 常见的值有:

- "x86"
- "x86_64"
- "aarch64"
- "riscv64"

比如为 aarch64 平台指定模块的源文件:

```rust, ignore
#[cfg_attr(target_arch = "aarch64", path = "platform_aarch64.rs")]
mod platform;
```

## target_feature

键值型选择, 用于判定当前的处理器是否支持某些特性, 比如:

- "aes"
- "avx"
- "avx2"
- "crt-static"
- "sha"
- "sse"
- "sse4"

要注意的是, 这些选择都跟 `target_arch` 紧密相关, 都是平台特有的. 比如 "aes" 只在 "aarch64" CPU 上使用.

```rust, ignore
#[cfg_attr(target_feature = "aes", path = "aes_aarch64.rs")]
mod aes;

#[cfg_attr(not(target_feature = "aes"), path = "aes_portable.rs")]
mod aes;
```

## target_os

键值型选项, 用于判定目标的操作系统类型, 常用的值有:

- "linux"
- "windows"
- "macos"
- "ios"
- "android"
- "freebsd"

```rust, ignore
#[cfg_attr(target_os = "linux", path = "platforms/linux/mod.rs")]
mod platform

#[cfg_attr(target_os = "freebsd", path = "platforms/freebsd/mod.rs")]
mod platform;
```

## target_family

键值型选项, 用于大概指定目标操作系统的类型, 常见的值有:

- "unix", unix-like 系统, 比如 linux, macos, ios, android, freebsd
- "windows", windows 系统
- "wasm", WebAssembly 平台

```rust, ignore
#![cfg(target_family = "windows")]
use windows::Win32::UI;
```

## unix 和 windows

这个是对上面的简写:

- "unix" 相当于 `target_family = "unix"`
- "windows" 相当于 `target_family = "windows"`

## target_endian

键值型选项, 用于判定系统的大小端, 它只有两个可能的值:

- "big"
- "little", linux 平台默认都是小端的

比如, 下面的示例代码, 定义的 `tcphdr_t` 结构体, 针对大小端不同的机器, 设置了

```rust, ignore
/// TCP header.
/// Per RFC 793, September, 1981.
#[repr(C)]
pub struct tcphdr_t {
    /// source port
    pub th_sport: u16,
    /// destination port
    pub th_dport: u16,
    /// sequence number
    pub th_seq: tcp_seq,
    /// acknowledgement number
    pub th_ack: tcp_seq,

    #[cfg(target_endian = "big")]
    /// data offset
    pub th_off: u8,
    // (unused)
    _th_x2: u8,
    #[cfg(target_endian = "little")]
    /// data offset
    pub th_off: u8,
    
    ...
}
```

## target_pointer_width

键值型选项, 用于设置目标系统上一个指针的占用的比特数, 常用值有:

- "64", 64 位系统, 比如 "aarch64", "riscv64" 或者 "x86_64", 8个字节
- "32", 32 位系统, 4个字节
- "16"

同时, 要注意的是 `usize` 和 `isize` 占用的字节数与它相同, 在64位系统上, 都是8个字节的.

```rust, ignore
#[cfg(target_pointer_width = "32")]
/// max bytes for an exec function
pub const ARG_MAX: usize = 2 * 256 * 1024;

#[cfg(target_pointer_width = "64")]
/// max bytes for KVA-starved archs
pub const ARG_MAX: usize = 256 * 1024;
```

## target_has_atomic

键值型选项, 用于判定目标系统对特定大小的原子操作是否支持, 常见的值有:

- "8", 支持 AtomicI8, AtomicU8, AtomicBool
- "16", 支持 AtomicI16, AtomicU16
- "32", 支持 AtomicI32, AtomicU32
- "64", 支持 AtomicI64, AtomicU64, AtomicIsize, AtomicUsize
- "128", 支持 AtomicI128, AtomicU128
- "ptr", 支持 AtomicPtr

## test

启用代码里的测试, 具体看[单元测试](../test/unit-test.md)

## debug_assertions

`#[cfg(debug_assertions)]` 用于判断是否处于 debug 编译模式, 通常在调试模式下, 会打印出更多的调试代码.

看下面的例子:

```rust
#[allow(unused_variables)]
fn main() {
    let keys = [1, 1, 2, 3, 5, 8, 13, 21];
    #[cfg(debug_assertions)]
    for i in 1..keys.len() {
        assert!(keys[i - 1] <= keys[i]);
    }
}
```

`debug_assert!()` 宏的内部也是使用的这个条件:

```rust, ignore
macro_rules! debug_assert {
    ($($arg:tt)*) => {
        if $crate::cfg!(debug_assertions) {
            $crate::assert!($($arg)*);
        }
    };
}
```

## 参考

- [Conditional compilation](https://doc.rust-lang.org/reference/conditional-compilation.html)