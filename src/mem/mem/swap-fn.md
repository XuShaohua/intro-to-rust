# mem::swap() 函数

用于交换相同类型的两个可变引用.
这个函数的内部使用了 [ptr::swap_nonoverlapping()](../ptr/swap-nonoverlapping-fn.md).

```rust
use std::mem;

fn main() {
    let mut x = [1, 2, 3];
    let mut y = [4, 5];

    mem::swap(&mut x[0], &mut y[0]);
    assert_eq!(x, [4, 2, 3]);
    assert_eq!(y, [1, 5]);
}
```