# 切片 slice

切片 slice, 可以认为是对连续存储元素的访问代理 (比如 `[T; N]` 或者 `Vec<T>`), 本身并不存储实际的数据,
即它只是对原有数据的引用, 并不拥有所有权.
它是一种动态大小的类型(dynamic sized type), 即在编译期不能确定所占用的内存大小. 它的类型是: `[T]`.

切片写作 `[T]`, 只指定了元素类型, 并没有指定其长度; 所以它不能直接存储为变量或作为函数参数, 而应该以引用的方式来使用,
否则会遇到类似 `"doesn't have a size known at compile-time"` 的报错.

常用的切片引用形式有以下三种:

- `&[T]`, 共享引用的切片(shared slice), 通常我们所说的切片就是这种, 它表示不可变切片, 一个值可以有多个不可变切片,
  因为它们都是只读的
- `&mut [T]`, 可变引用切片, 可以改变切片中元素的值, 它表示可变切片, 即可修改元素的值. 一个值只能最多有一个可变切片
- `Box<[T]>`, boxed slice, 后面的章节会有详细的介绍

共享引用切片, 属于一种胖指针 (fat pointer), 有两部分组成:

- 指向具体数据的一个指针
- 可以访问的元素数目, 类型是 usize

可以将数组通过引用的方式自动转为 slice:

```rust
let xs = [42u64; 10];
let s = &xs;
```

也可以指定数据代理访问的范围, 即只允许访问其部分元素:

```rust
let xs = [42; 10];
let s = &xs[1..5];
```

数组 array 可以直接转换成数组切片:

```rust
fn do_something(slice: &[i32]) { }

let xs = [1, 1, 2, 3, 5];
do_something(&xs);
```

也可以只将数组中的一部分元素转为切片:

```rust
fn do_something(slice: &[i32]) { }

let xs = [1, 1, 2, 3, 5];
do_something(&xs[1..3]);
```

动态数组(vector) 也可以转换成切片:

```rust
let nums: Vec<i32> = vec![1, 1, 2, 3, 5, 8];
let part: &[i32] = &vec[1..3];
assert_eq!(part, &[1, 2]);
```

在下一节还会介绍字符串切片(string slice).

## 切片的内存布局

以下面的代码片段为例, 来演示引用切片的内存布局.

```rust
{{#include assets/slice-values.rs:5: }}
```

上文已经提到了, 引用切片 `&[T]` 是一个胖指针, 包含两个部分:

- 指向 buffer 的指针
- 连续存储的元素个数

![slice mem layout](assets/slice-mem-layout.svg)

## 切片常用方法

切片本身提供了很丰富的函数, 操作数组(array), 动态数组(vector)以及字符串时, 会非常频繁地使用这些接口.

### is_empty(), len()

### iter(), iter_mut()

### contains(), starts_with(), ends_with()

### swap(), swap_with_slice()

### reverse(), rotate_left(), rotate_right()

### split(), split_first()

### sort(), sort_unstable()

### as_ptr(), as_mut_ptr()

这两个函数将引用切片转换成原始指针, 原始指针指向的内存地址就是 `buffer ptr` 指向的地址 ,
它们返回的指针类型分别是 `*const T` 和 `*mut T`.

```rust
{{#include assets/slice-as-ptr.rs:5: }}
```

### concat(), join()

### copy_from_slice(), clone_from_slice()

### fill(), fill_with(), repeat()

### first(), first_mut(), last(), last_mut()
