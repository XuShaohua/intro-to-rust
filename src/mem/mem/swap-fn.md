# mem::swap() 函数

用于交换相同类型的两个可变引用.
这个函数的内部使用了 [ptr::swap_nonoverlapping()](../ptr/swap-nonoverlapping-fn.md).

```rust
{{#include assets/mem-swap.rs:5: }}
```