
# 索引 Index 与 IndexMut

用于实现 `container[index]` 这样的索引操作, 通过 `*container.index(index)` 以及
`*container.index_mut(index)` 方法.
它们常用于容器类中, 用于访问容器中的某个或者某些元素.

它们的定义如下:
```rust
pub trait Index<Idx>where
    Idx: ?Sized,{
    type Output: ?Sized;

    // Required method
    fn index(&self, index: Idx) -> &Self::Output;
}

pub trait IndexMut<Idx>: Index<Idx>where
    Idx: ?Sized,{
    // Required method
    fn index_mut(&mut self, index: Idx) -> &mut Self::Output;
}
```

可以看到, `IndexMut<T>` 是对 `Index<T>` 的扩展, 它返回一个可变更引用 (mutable reference).

比如:
```rust
use std::ops::{Index, Range};
let slice = vec![1, 1, 2, 3, 5];
assert_eq!(slice[1..4], *slice.index(Range{start:1, end: 4}));
```
可以看到, `container[index]` 这种写法只是个语法糖.


## 与 C++ 的区别
在 C++ 中, `index` 操作符是可以直接向容器中插入新的值, 但根据上面的定义可以看出, `IndexMut` 只是
返回一个可变引用, 只能用于修改已有值, 不能用于插入新值.

以下代码就会报出 `index out of bounds` 的错误:
```rust
let mut slice = vec![];
slice[0] = 1;
slice[1] = 4;
assert_eq!(slice.len(), 2);
```

下面的 C++ 代码可以正常编译和运行, 也比较符合常见编程语言的预期操作(例如Python也类似):

```cpp
#include <cassert>
#include <map>

int main() {
  std::map<std::string, double> persons = {};
  persons["Joe"] = 1.74;
  persons["Allen"] = 1.71;
  assert(persons.size() == 2);
  return 0;
}
```

但当把它用 Rust 重写之后, 并不能通过编译, 因为 `BTreeMap` 并没有实现 `IndexMut`:

```rust
use std::collections::BTreeMap;

let mut persons = BTreeMap::<String, f64>::new();
persons["Joe"] = 1.74;
persons["Allen"] = 1.71;
assert_eq!(persons.len(), 2);
```

## 一个完整的示例

```rust

use std::ops::{Index, IndexMut};

#[derive(Debug, Default, Clone, Copy, PartialEq, Eq)]
pub enum Side {
    #[default]
    Top,
    Right,
    Bottom,
    Left,
}

#[derive(Debug, Default, Clone, PartialEq)]
pub struct Margins {
    pub top: f32,
    pub right: f32,
    pub bottom: f32,
    pub left: f32,
}

impl Index<Side> for Margins {
    type Output = f32;

    fn index(&self, index: Side) -> &Self::Output {
        match index {
            Side::Top => &self.top,
            Side::Right => &self.right,
            Side::Bottom => &self.bottom,
            Side::Left => &self.left,
        }
    }
}

impl IndexMut<Side> for Margins {
    fn index_mut(&mut self, index: Side) -> &mut Self::Output {
        match index {
            Side::Top => &mut self.top,
            Side::Right => &mut self.right,
            Side::Bottom => &mut self.bottom,
            Side::Left => &mut self.left,
        }
    }
}
```