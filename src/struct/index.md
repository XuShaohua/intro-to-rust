
# 结构体 Structures

自定义类型主要通过:
* struct, 自定义结构体
* enum, 枚举
这两种方式.

另外, 以下变量修饰符即可用于本地作用域, 也可用于全局作用域:
* const 用于定义常量, 编译期即被展开并替换
* static 用于定义静态变量. 如果静态变量是可修改的(mutable), 则对它的读写都是
`unsafe` 的.

使用 `type` 可用于定义一个类型别名, 类似于 C 中的 `typedef` 或者 C++ 中的
`using TypeA = TypeB;`.

使用 `use` 可将某模块中的内容或某枚举类型中的元素导入到当前作用域, 跟 C++ 中的
`using` 有些类似.

结构体有三种写法:

## Named-Field Structs
C 语言中类似的结构体, 经典写法, 除了各元素本身占用的内存之外, struct 内还可能有
一个额外的 padding, 用于对齐内存, 即是 4 的倍数.

## Tuple-Like Structs, Named Tuple
命名元组, named tuple, 其实就是一个元素的别名, 比如 `struct Matrix(f64, f64, f64, f64)`.
也可能包含一个 padding 用于对齐内存.

```rust
pub struct Bounds(pub usize, pub usize);

impl Bounds {
  fn new(elem0: usize, elem1: usize) -> Bounds {
    Bounds (elem0, elem1)
  }
}

let image_bounds = Bounds(1024, 768);
```

这种写法对于重命名一个新的类型很有效:
```rust
struct Ascii(Vec<u8>);
```
这种写法比以下写法更为严格:
```rust
type Ascii = Vec<u8>;
```

## Unit-Like Structs
Unit struct, 即定义一个空白的不包含任何具体元素的, 比如 `struct Nil;`, 其占用的
内存大小为0. `let nil = Nil; assert_eq!(std::mem::size_of_val(&nil), 0);`

## Generic Structs
一般的泛型写法:
```rust
pub struct Queue<T> {
  older: Vec<T>,
  younger: Vec<T>,
}

impl<T> Queue<T> {
  pub fn new() -> Queue<T> {
    Queue{ older: Vec::new(), younger: Vec::new() }
  }

  pub fn push(&mut self, t: T) {
    self.yonger.push(t);
  }

  pub fn is_empty(&self) -> bool {
    self.older.is_empty() && self.yonger.is_empty()
  }
}
```

### 偏特化 (partial specialization)

```rust
pub struct Queue<T> {
    older: Vec<T>,
    younger: Vec<T>,
}

impl<bool> Queue<bool> {
  pub fn all_true(&self) -> bool {
    unimplemented!()
  }
}
```

## Interior Mutability 内部可变性
对于一个不可变的值, 其内部却包含了一些可变的元素.
可以使用 `std::cell::Cell` 及 `std::cell:RefCell` 实现这样的效果.

```rust
impl<T> Cell<T>
  where T: Copy
{
  pub fn new(t: T) -> Cell<T> {
    ...
  }

  pub fn get(&self) -> T {
    ...
  }

  pub fn set(&self, t: T) {
    ...
  }
}
```
这里可以看到, `Cell::set()` 方法在声明时并不会改变 `self`.

另外, `Cell` 要求 `T` 实现了 `Copy` trait, 而且其 `get()` 和 `set()` 方法都会
复制新的值. 这种限制有几点不足, 第一是频繁的拷贝数据会浪费资源, 第二是有些类型
并不支持拷贝, 比如说文件句柄.

为了解决以上问题, rust 又引入了 `RefCell` 类型.

```rust
impl<T> RefCell<T>
{
  pub fn new(t: T) -> RefCell<T> {
    ...
  }

  pub fn borrow(&self) -> &T {
    ...
  }

  pub fn borrow_mut(&self) -> &mut T {
    ...
  }
}
```
