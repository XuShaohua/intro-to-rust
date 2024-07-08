# ptr::null() 函数

这个函数用于创建空指针, 它指抽的内存地址是0.

```rust
use std::ptr;

fn main() {
    let ptr: *const i32 = ptr::null();
    assert!(ptr.is_null());
}
```

类似于C代码的写法: `T* ptr = NULL;`