# 特征对象 Trait Objects

特征对象 trait objects 是实现一组特征 trait 的一种类型的不透明值 opaque value,
其没有固定内存大小的值.
这种数值类型类似于数组, 因为其大小不确定, 并不能直接作为参数使用, 需要使用 `&dyn Trait` 或者 `Box<dyn Trait>` 的形式.

```rust
use std::io::Write;

fn main() {
    let mut buf: Vec<u8> = Vec::new();
    let writer: &mut dyn Write = &mut buf;
}
```

这里, `writer` 就是一个 `trait object`. 作为对比, 我们看看之前学过的 slice 用.

```rust
fn main() {
    let vec = vec![1, 2, 3, 4];
    let vec_ref: &[i32] = &vec;
}
```

## dyn trait

类似于使用切片引用来存储数组 array 或者 动态数组 vec 一样, 使用 `dyn trait` 语法来存储 trait object.

先看一个示例程序:

```rust
{{#include assets/animal-trait.rs:5:}}
```

它使用 dyn trait 作为返回值, 因为trait object 对象本身占用的内存大小是不确定的, 我们需要把它用 `Box<dyn Trait>` 包装起来,
放在堆内存上, 否则编译器就会提示内存大小的错误.

## Trait Object 的内存布局

`trait object` 的引用是一种胖指针(fat pointer), 有两个指针组成; 在 64 位的机器上, 占用 `16` 个字节:

- `data ptr` 指针指向实际对象的内存地址
- `vtable ptr` 指针指向该对象的 `vtable`, 里面记录了该对象提供的方法; 这个表是相同类型的所有值所共享.

trait object 详细的布局结构会在下一节动态派发部分有更全面的介绍.

## 参考

- [Trait objects](https://doc.rust-lang.org/reference/types/trait-object.html)
- [Using Trait Objects That Allow for Values of Different Types](https://doc.rust-lang.org/book/ch17-02-trait-objects.html)
