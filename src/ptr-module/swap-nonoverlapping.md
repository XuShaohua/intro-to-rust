# ptr::swap_nonoverlapping() 函数

这个函数与前文讲到的 [swap() 函数](swap-replace)类似, 但用于交换的两块内存不重叠.

其接口定义如下:

```rust, ignore
pub unsafe fn swap_nonoverlapping<T>(x: *mut T, y: *mut T, count: usize);
```

看一下代码示例:

```rust
{{#include assets/swap-nonoverlapping.rs:5: }}
```
