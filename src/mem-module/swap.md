# mem::swap() 函数

用于交换相同类型的两个可变更引用.

该函数的接口声明如下:

```rust, no_run
pub fn swap<T>(x: &mut T, y: &mut T);
```

下面是一个简单的用例程序:

```rust
{{#include assets/swap.rs:5: }}
```

## swap() 函数的实现

该函数的源代码如下:

```rust, no_run
{{#include assets/swap-fn.rs:2:}}
```

可以看到, 这个函数仅仅使用了 [ptr::swap_nonoverlapping()](../ptr-module/swap-nonoverlapping.md).
