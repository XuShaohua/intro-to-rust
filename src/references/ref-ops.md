# 引用的操作

## 引用的赋值

在 C++ 中，引用在初始化之后，其指向的内存地址便不再能被修改。
在 Rust 中, 却不是这样的, 引用可以再被指向别的地址:

```rust
let x = 42;
let y = 3;
let mut r = &x;
if y > 0 {
  r = &y;
}
```

这里, 我们使用 `let mut r = &x;` 因为要修改 `r` 指向的地址, 所以要给它加 `mut`
来修饰.

比较两个内存是否是同一个地址, 可以使用 `std::ptr::eq()`.

## 创建引用的引用

## 引用之间的比较

以下示例中, `assert!(ref_x == ref_y);` 进行的是值的比较;
而 `assert!(!std::ptr::cmp(ref_x, ref_y));` 则比较了两个引用本身的内存地址,
所以它们是不相等的.

```rust
fn main() {
    let x = 42;
    let y = 42;
    let ref_x = &x;
    let ref_y = &y;

    assert!(ref_x == ref_y);
    assert!(!std::ptr::eq(ref_x, ref_y));
}
```

## 引用永远是有效的

引用不能是 `NULL` 或者别的无效值, 它们在编译期就已经确认了一直是有效的.

`Option<&T>` 表示可以是无效引用, 其值为 None, 类似于 C++ 中的 nullptr. 要么其值
是一个有效的引用. 这个写法不会占用额外的内存.

## 切片 slice 及 trait object 的引用

通常, 引用本身占用的内存大小只是一个指针大小, 即 `usize`. 这个类似于 C/C++ 中的
指针.

这两类都是胖指针(fat pointer), 即除了指向内存地址之外, 还有别的属性.

指向 slice 的指针包含两个 field, 第一个是指向 slice 某个元素的内存地址; 第二个
是定义了该引用可访问的元素个数.

指向 trait object 的引用包含了两个 field, 第一个是指向该值的内存地址, 第二个指向
该值对该 trait 的实现的地址, 以方便调用该 trait 定义了的方法.

但还有两个特殊类型的引用, 它们都占两个指针大小, 即 `usize * 2`:

A reference to a slice 是一个胖指针, 该指针包含两个字段:

* slice 起始地址
* slice 长度

A reference to a trait object 也是一个胖指针, 包含:

* object 数据地址
* object virtual table 地址, 即该值对该 trait 的具体实现