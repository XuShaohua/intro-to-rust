# mem::replace() 函数

传入一个同类型的值, 并与目标值进行交换.

该函数的接口如下:

```rust, no_run
pub const fn replace<T>(dest: &mut T, src: T) -> T;
```

可以看到, 目标值 `dest` 是以可变更引用的形式 `&mut T` 传入的, 这样的话, 类型 `T` 必须做到内存对齐.
如果无法满足内存对齐的要求, 可以使用 [ptr::replace()](../ptr-module/swap-replace.md).

接下来看一个基本的示例程序:

```rust
{{#include assets/replace.rs:5:}}
```

## replace() 函数的实现

这个函数的内部实现也较简单, 直接看源代码:

```rust
{{#include assets/replace-fn.rs:2:}}
```

整个过程有以下几步:

1. 先在栈上创建一个临地对象 `result`
2. 将目标值 `dest` 的所有字节都拷贝到 `result`; 发生所有权转移,
   此时 `result` 拥有了 `dest` 所指向值的所有权, 但 `dest` 并不会被 drop
3. 将源值 `src` 的所有字节都拷贝到 `dest`; 发生了所有权转移,
   此时 `dest` 拥有了 `src` 所指向值的所有权, 但 `src` 并不会被 drop
4. 最后将 `result` 返回