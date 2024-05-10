# 区间选择 Range

`ops` 模块定义了几种区间选择的结构体, 以及 `RangeBounds` trait.

## Range 迭代器

用于定义一个左闭右开的区间, `[start..end)`, 即 `start <= x < end`, 如果 `start >= end`,
就为空, 啥都不选.

其结构体定义如下:

```rust
pub struct Range<Idx> {
    pub start: Idx,
    pub end: Idx,
}
```

它用来支持 `start..end` 这种语法糖:

```rust
use std::ops::Range;
assert_eq!((3..6), Range{ start: 3, end: 6 });
```

## RangeFrom 迭代器

它的定义如下:

```rust
pub struct RangeFrom<Idx> {
    pub start: Idx,
}
```

它用来支持 `start..` 这种语法糖:

```rust
use std::ops::RangeFrom;
assert_eq!((3..), RangeFrom { start: 3 });
```

要注意的是, 因为这个迭代器没有指定结束的值, 它可能会出现整数溢出的问题.

## RangeFull 结构体

用于定义无边界区间, 然而它并不是一个迭代器, 它没有起始值.

它用来支持 `..` 这种语法糖, 它用来选择一个 [slice](../primitives/slice.md) 里的所有元素.

```rust
let slice = [0, 1, 1, 2, 3];
assert_eq!(slice[..], [0, 1, 1, 2, 3]);
```

## RangeInclusive 迭代器

它用来支持 `start..=end` 这种语法糖:

```rust
use std::ops::RangeInclusive;
assert_eq!((3..=6), RangeInclusive::new(3, 6));
```

## RangeTo 结构体

它不是一个迭代码, 因为没有起始值, 用于 slice 里的部分元素.

它用来支持 `..end` 这种语法糖:

```rust
use std::ops::RangeTo;
assert_eq!((..6), RangeTo{ end: 6 });
```

## RangeToInclusive 结构体

它不是一个迭代码, 因为没有起始值, 用于 slice 里的部分元素.

它用来支持 `..=end` 这种语法糖:

```rust
use std::ops::RangeToInclusive;
assert_eq!((..=6), RangeToInclusive{ end: 6 });
```
