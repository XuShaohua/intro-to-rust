# 管理容量

影响 `Vec<T>` 的容量的方法有很多种, 接下来我们分别列举主要的几种形式.

Vec 分配的堆内存大小等于 `size_of::<T>() * vec.capacity()`.

## new() 函数

这个函数就比较简单了, 它并不会分配堆内存, 容量等于 `0`.

```rust
{{#include assets/vec-new-capacity.rs:5:}}
```

可以看看标准库中 `Vec::new()` 的代码实现:

```rust, no_run
{{#include assets/vec_new.rs:3:}}
```

## with_capacity(cap) 函数

该函数在创建 vec 的同时, 还给它分配足够多的堆内存, 以便存放 `cap` 个元素.

## vec![] 宏, 以及从迭代器创建

从这两种方法创建 vec 对象时, 都要先获取元素的个数 `len`, 然后设置新创建的 vec 对象的容量恰好等于 `len`,
看下面的代码片段:

```rust
let v1 = vec![1, 2, 3];
let v2: Vec<i32> = [1, 2, 3].into_iter().collect();
assert_eq!(v1, v2);
assert_eq!(v1.capacity(), 3);
assert_eq!(v2.capacity(), 3);
```

## push() 函数, 向 vec 中加入新元素

以下的代码示例展示了 vec 的扩容策略, 那就是 `2 倍扩容`, 不管当前的 vec 对象已经占用了多大的内存,
在需要扩容时, 一直都是 `2倍扩容`.

```rust
{{#include assets/vec-push-capacity.rs:5:}}
```

## pop() 函数, 从 vec 中移除元素, 会不会自动释放内存?

先看一下测试代码:

```rust
{{#include assets/vec-pop-capacity.rs:5:}}
```

可以发现, 它并不会自动释放多余的内存, 需要手动调用 `resize()`, `shrink_to_fit()` 等函数.

## reverse(additional) 函数

这个函数要求数组至少预留 `additional` 个元数的空间.

```rust
{{#include assets/vec-reserve-capacity.rs:5:}}
```

可以发现, 上面的例子中, 数组多分配了一些空间. 我们看一下标准库中的代码:

```rust, no_run
fn grow_amortized(&mut self, len: usize, additional: usize) -> Result<(), TryReserveError> {
    ...
   
    // Nothing we can really do about these checks, sadly.
    let required_cap = len.checked_add(additional).ok_or(CapacityOverflow)?;

    // This guarantees exponential growth. The doubling cannot overflow
    // because `cap <= isize::MAX` and the type of `cap` is `usize`.
    let cap = cmp::max(self.cap.0 * 2, required_cap);
    let cap = cmp::max(Self::MIN_NON_ZERO_CAP, cap);

    let new_layout = Layout::array::<T>(cap);
    ...
}
```

如果要留出的空间比当前容量的 `2` 倍少的话, 会直接使用 `2 倍扩容` 的策略.

## shrink_to_fit() 函数

这个函数比较容易理解, 调整数组的容量, 移除多余的未使用的内存, 这样 `len() == capacity()`.

## resize() 函数

调整数组中的元素个数, 如果新的个数比当前的少, 就移除一部分;
如果比当前的个数多, 就添加一部分, 使用指定的值, 同时数组的容量调整, 依然是按照 `2 倍扩容` 的策略.

```rust
{{#include assets/vec-resize-capacity.rs:5:}}
```