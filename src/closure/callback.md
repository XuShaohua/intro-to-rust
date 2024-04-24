# 回调函数

`libgit2-sys` 里面定义了一些比较典型的回调函数:

```rust, ignore
pub type git_checkout_progress_cb =
    Option<extern "C" fn(*const c_char, size_t, size_t, *mut c_void)>;
```

这里的回调函数可以为空指针.
