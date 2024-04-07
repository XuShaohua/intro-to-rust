# ptr::swap_nonoverlapping() 函数

这个函数与前文讲到的 [swap() 函数](swap-replace-fn.md)类似, 但用于交换的两块内存不重叠.

其接口定义如下:

```rust, not_run
pub unsafe fn swap_nonoverlapping<T>(x: *mut T, y: *mut T, count: usize);
```

看一下代码示例:

```rust
use std::ptr;

fn main() {
    let mut src = b"r".to_vec();
    let mut dst = b"bust".to_vec();
    unsafe {
        //ptr::swap_nonoverlapping(ptr::from_mut(&mut src[0]), ptr::from_mut(&mut dst[0]), 1);
        ptr::swap_nonoverlapping(&mut src[0], &mut dst[0], 1);
    }
    assert_eq!(src, b"b");
    assert_eq!(dst, b"rust");
}
```