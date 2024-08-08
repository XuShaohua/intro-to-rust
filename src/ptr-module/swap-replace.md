# ptr::swap() 与 ptr::replace() 函数

这两个函数的定义如下:

```rust, ignore
pub unsafe fn swap<T>(x: *mut T, y: *mut T);
pub unsafe fn replace<T>(dst: *mut T, src: T) -> T;
```

- swap() 用于交换两个指针
- replace() 用于交dest 指向 src 对象的地址, 并返回原先的值

使用这两个函数, 要满足必要条件:

- src/dst 要是有效的地址, 可读可写
- src/dst 要被初始化
- src/dst 要内存对齐

看一下示例代码:

```rust
{{#include assets/swap-replace.rs:5: }}
```

## replace() 的实现

replace() 函数的实现如下:

```rust, no_run
{{#include assets/replace-fn.rs:2:}}
```

这个函数会先检查一下代码是否对齐, 然后就直接调用 `mem::replace()` 来交换两个内存地址.

## swap() 的实现

swap() 函数的实现如下:

```rust, no_run
{{#include assets/swap-fn.rs:2:}}
```

可以看到, 它分成了以下几步:

1. 在栈上分配一个临时对象 tmp
2. 将目标对象 dst 拷贝到 tmp
3. 将源对象 src 拷贝到 dst
4. 最后将 tmp 拷贝到 src

可以发现这个步骤比较多, 如果 `src` 与 `dst` 的内存没有重叠, 可以使用 [swap_nonoverlapping()](swap-nonoverlapping.md),
这个函数效率更高.