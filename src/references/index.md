# 引用 Reference

可以使用引用来访问值，同时不影响其生命周期。

- shared reference, `&T`, 同时期内可以有多个这种引用指向同一个值，都是只读的。
  shared references 实现了 `Copy` trait
- mutable reference, `&mut T`，对其引用的值可读可写，同时期内只能有一个可写引用
  指向一个值，Mutable references 没有实现 `Copy` trait

尽管引用是一种指针，但因为它使用很频繁，Rust 在 `.` 操作符被使用时，若有必要会
自动直接访问指针所指向的内存（deref），而不需要像 C 语言那样使用 `*ref`。这个
功能被称为 implicit dereference`。

同时，如有必要，`.`操作符还会隐式地借用其左操作值的引用：

```rust
let mut v = vec![1, 3, 2];
v.sort();
(&mut v).sort();
```

其中 `v.sort()` 被隐式去转换成了 `(&mut v).sort()`。

有两类, mut reference 以及 shared reference.

```rust
let ref value = 42;
```

等同于以下写法:

```rust
let value = &42;
```

在 `match` 进行模式匹配时, 可以使用 `ref` 及 `ref mut` 来从 struct/tuple 中
解析出需要的元素:

```rust
#[derive(Debug)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let mut p = Point { x: 0, y: 5 };
    match p {
        Point { x: 0, ref mut y } => *y = 3,
        _ => println!("Do nothing!"),
    }
    println!("p: {:?}", p);
}
```

## 显式地 deference

```rust
let x = 42;
let r = &x;
assert_eq!(*r, 42);
```

## 隐式地 dereference

如有必要，`.`操作符还会隐式地借用其左操作值的引用：

```rust
struct Anime { name: &'static str, bechdel_pass: bool };
let aria = Anime { name: "Aria: The Animation", bechdel_pass: true };
let aria_ref = &aria;
println!("passed: {}", aria_ref.bechdel_pass);
```

## 比较

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

## 切片及 trait object 的引用 (References to Slice and Trait Objects)

通常, 引用本身占用的内存大小只是一个指针大小, 即 `usize`. 这个类似于 C/C++ 中的
指针.

但还有两个特殊类型的引用, 它们都占两个指针大小, 即 `usize * 2`:

A reference to a slice 是一个胖指针, 该指针包含两个字段:

* slice 起始地址
* slice 长度

A reference to a trait object 也是一个胖指针, 包含:

* object 数据地址
* object virtual table 地址, 即该值对该 trait 的具体实现

## Static

全局变量, 要用 `static` 修饰, 有两个特点:

* 每个静态变量都要被初始化
* 可变静态变量不是线程安全的, 如果要直接访问它, 需要放在 `unsafe {}` 内部

```rust
static mut STASH: &i32 = &10;
static WORTH_POINTING_AT: i32 = 42;
```

## Function lifetime

当函数只接受一个引用作为参数, 而且也返回一个引用时, rust 会假设这两个引用有
相同的生命周期. 这样做主要是为了简化函数声明. 比如:

```rust
fn smallest(v: &[i32]) -> &i32 {
    let mut s = &v[0];
    for r in &v[1..] {
        if *r < *s {
            s = r;
        }
    }
    s
}

fn main() {
    let s;
    let parabola = [9, 4, 3, 1, 1, 4, 9];
    s = smallest(&parabola);
    println!("s: {}", s);
}
```

## 结构体中的引用

要么使用静态生命周期, 要么显式地标出其生命周期:

```rust
struct S {
  r: &'static i32,
}

struct T<'a> {
  r: &'a i32,
}
```

如果结构体里嵌了别的结构体, 可以这样:

```rust
struct S<'a> {
  r: &'a i32,
}

struct T<'a> {
  s: S<'a>,
}
```

## 引用重新赋值

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

### Slice 及 trait object 的引用

这两类都是胖指针(fat pointer), 即除了指向内存地址之外, 还有别的属性.

指向 slice 的指针包含两个 field, 第一个是指向 slice 某个元素的内存地址; 第二个
是定义了该引用可访问的元素个数.

指向 trait object 的引用包含了两个 field, 第一个是指向该值的内存地址, 第二个指向
该值对该 trait 的实现的地址, 以方便调用该 trait 定义了的方法.

## 引用的安全性

lifetime 只有在编译期间被编译器使用, 在运行期间不存在.

### 跳过生命周期标记
