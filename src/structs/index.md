# 结构体 Structures

自定义类型主要通过两种方式:

- struct, 自定义结构体
- enum, 枚举

接下来的两个章节就介绍它们.

结构体有三种写法:

## Named-Field Structs

C 语言中类似的结构体, 经典写法, 除了各元素本身占用的内存之外, struct 内还可能有
一个额外的 padding, 用于对齐内存, 即是 4 的倍数.

```rust
struct PointF {
    x: f32,
    y: f32,
}
```

## Tuple-Like Structs, Named Tuple

命名元组, named tuple, 其实就是一个元素的别名, 比如 `struct Matrix(f64, f64, f64, f64)`.
也可能包含一个 padding 用于对齐内存.

```rust
pub struct Bounds(pub usize, pub usize);

impl Bounds {
    fn new(elem0: usize, elem1: usize) -> Bounds {
        Bounds(elem0, elem1)
    }
}

fn main() {
    let image_bounds = Bounds(1024, 768);
}
```

这种写法对于重命名一个新的类型很有效, 还可以为它实现新的方法:

```rust
struct Ascii(Vec<u8>);
```

这种写法比以下写法更为严格, 下面的写法只是声明了一个别名, 并不能给 `Ascii` 添加新的方法:

```rust
type Ascii = Vec<u8>;
```

## Unit-Like Structs

Unit struct, 即定义一个空白的不包含任何具体元素的, 比如 `struct Nil;`, 其占用的
内存大小为0.

```rust
fn main() {
    let nil = Nil;
    assert_eq!(std::mem::size_of_val(&nil), 0);
}
```
