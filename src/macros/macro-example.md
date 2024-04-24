# 宏的高级用法

以下示例代码来自 `x11-rs` 项目, 它实现了 `xlib` 的 rust 绑定, 核心代码是一个宏:

```rust, ignore
macro_rules! x11_link {
  { $struct_name:ident, $pkg_name:expr, [$($lib_name:expr),*], $nsyms:expr,
    $(pub fn $fn_name:ident ($($param_name:ident : $param_type:ty),*) -> $ret_type:ty,)*
    variadic:
    $(pub fn $vfn_name:ident ($($vparam_name: ident : $vparam_type:ty),+) -> $vret_type:ty,)*
    globals:
    $(pub static $var_name:ident : $var_type:ty,)*
  } => {
    extern "C" {
      $(pub fn $fn_name ($($param_name : $param_type),*) -> $ret_type;)*
      $(pub fn $vfn_name ($($vparam_name : $vparam_type),+, ...) -> $vret_type;)*
    }

    extern {
      $(pub static $var_name : $var_type;)*
    }
  }
}

// 然后手动声明各个函数接口
x11_link! { Xlib, x11, ["libX11.so.6", "libX11.so"], 767,
  pub fn XActivateScreenSaver (_1: *mut Display) -> c_int,
  pub fn XAddConnectionWatch (_3: *mut Display, _2: Option<unsafe extern "C" fn (*mut Display, *mut c_char, c_int, c_int, *mut *mut c_char)>, _1: *mut c_char) -> c_int,
  pub fn XAddExtension (_1: *mut Display) -> *mut XExtCodes,
  pub fn XAddHost (_2: *mut Display, _1: *mut XHostAddress) -> c_int,
  ...
}
```

## libgit2-sys

看第一个例子, 这个是 `libgit2-sys` 项目中使用的, 它用于批量定义枚举类:

```rust
macro_rules! git_enum {
    (pub enum $name:ident { $($variants:tt)* }) => {
        #[cfg(target_env = "msvc")]
        pub type $name = i32;
        #[cfg(not(target_env = "msvc"))]
        pub type $name = u32;
        git_enum!(gen, $name, 0, $($variants)*);
    };
    (pub enum $name:ident: $t:ty { $($variants:tt)* }) => {
        pub type $name = $t;
        git_enum!(gen, $name, 0, $($variants)*);
    };
    (gen, $name:ident, $val:expr, $variant:ident, $($rest:tt)*) => {
        pub const $variant: $name = $val;
        git_enum!(gen, $name, $val+1, $($rest)*);
    };
    (gen, $name:ident, $val:expr, $variant:ident = $e:expr, $($rest:tt)*) => {
        pub const $variant: $name = $e;
        git_enum!(gen, $name, $e+1, $($rest)*);
    };
    (gen, $name:ident, $val:expr, ) => {}
}

git_enum! {
    pub enum git_revparse_mode_t {
        GIT_REVPARSE_SINGLE = 1 << 0,
        GIT_REVPARSE_RANGE = 1 << 1,
        GIT_REVPARSE_MERGE_BASE = 1 << 2,
    }
}
```

这个宏的特殊之处在于它内部使用了递归调用.

## dbg!()

`std::dbg!()` 宏用于调试代码, 尤其是使用递归调用时:

```rust
fn factorial(n: u32) -> u32 {
    if dbg!(n <= 1) {
        dbg!(1)
    } else {
        dbg!(n * factorial(n - 1))
    }
}

fn main() {
    let x = 42;
    dbg!(x);

    dbg!(factorial(5));
}
```
