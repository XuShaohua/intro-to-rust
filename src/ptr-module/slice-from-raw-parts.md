# ptr::slice_from_raw_parts() 函数

ptr::slice_from_raw_parts() 以及 ptr::slice_from_raw_parts_mut() 函数用于手动构造切片引用.
它们的函数接口如下:

```rust, no_run
pub const fn slice_from_raw_parts<T>(data: *const T, len: usize) -> *const [T];
pub fn slice_from_raw_parts_mut<T>(data: *mut T, len: usize) -> *mut [T];
```

用法也比较简单, 看一个示例:

```rust
{{#include assets/slice-from-raw-parts.rs:5:}}
```

上面的代码中展示了两种构造切片引用的方法:

- `ptr::slice_from_raw_parts(num_ptr, len);`
- `unsafe { mem::transmute::<(*const i32, usize), &[i32]>((num_ptr, len)) }`
