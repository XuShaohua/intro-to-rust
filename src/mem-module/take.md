# mem::take() 函数

与 [mem::swap()](swap.md) 类似, 但是使用默认值 `T::default()` 来替换.

该函数接口声明如下:

```rust, no_run
pub fn take<T: Default>(dest: &mut T) -> T;
```

看一个示例程序:

```rust
{{#include assets/take.rs:5: }}
```

## take() 函数的实现

这个函数非常简单, 它直接调用的 replace() 函数:

```rust
{{#include assets/take-fn.rs:2:}}
```