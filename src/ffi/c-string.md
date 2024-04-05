
# 字符串

C 语言中的字符串有这些特点:
- 以空字符 `\0` 结尾; 字符串中间不能包含空字符
- 不记录字符串长度
- 字符串本身是指向一个字符数组的指针

Rust 语言中的字符串 `String` 或者 `&str` 有这些特点:
- 字符串可以在任意位置包含空字符
- 有单独的元素记录字符串长度

可以发现, 这两种语言中的字符串并不能直接互相传递给对方.

## CString 与 CStr
为此, Rust 标准库里单独定义了与C语言兼容的字符串类型.

`CStr` 对 `CString` 的关系就像 `&str` 与 `String` 的关系.

- `CString` 拥有字符串的所有权
- `CStr` 是对后者的引用

它们之间是可以相互转换的.

CStr 与 `*const c_char` 之间可以用 `as_ptr()` 以及 `from_ptr()` 进行相互的转换.

看下面的示例程序:
```rust
use std::ffi::{c_char, CStr, CString};

extern {
    fn getenv(name: *const c_char) -> *const c_char;
}

pub fn getenv_safe(name: &str) -> String {
    let name_cstr = CString::new(name).unwrap();
    let cstr = unsafe { CStr::from_ptr(getenv(name_cstr.as_ptr())) };
    cstr.to_string_lossy().to_string()
}

fn main() {
    let path = getenv_safe("PATH");
    println!("PATH:{path}");
}
```

这里:
- `CString::new<T: Into<Vec<u8>>(t: T)` 会创建一个空字符结尾的 C 字符串
- `CString::as_ptr()` 返回的是 `*const c_char`, 等同于 C 语言中的 `const *char`, 可以用于FFI函数

