# 使用 Box 分配堆内存

## 常用方法

```rust
let x = Box::new(42_i32);
let ptr: * mut i32 = Box::into_raw(x);
let x2 = unsafe { Box::from_raw(ptr) };
assert_eq!(*x2, 42);
```