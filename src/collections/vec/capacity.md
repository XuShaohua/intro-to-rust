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

```rust
{{#include assets/vec-pop-capacity.rs:5:}}
```

## reverse() 函数

- `Vec::reverse();` 这里调用的是 `Slice::reverse()` 方法，是隐式地将 vec 先转成切片的

## shrink_to_fit() 函数

## resize() 函数
