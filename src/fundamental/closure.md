
# 闭包 Closure

可以捕获外部变量, 变量有三种方法被捕获:
* 引用 (read only)
* 可变引用 (mutable, modified)
* 值 (consumed), 如果该值实现了 `Copy` trait, 那就复制一份; 如果未实现, 就将该值 `move` 到 closure中.

当然, 也可以显式地加一个 `move` 标记, 将一个变量移到closure内.

自加1:
```rust
let accum = |s: i32| -> i32 { s + 1 };
```

返回一个常数1:
```rust
let one = || 1;
```

也可以获取被捕获变量的所有权:
```rust
let square = move |point: Point| -> i32 { point.x + point.y };
```

Rust中，闭包性能跟一般的函数一样，而且要比函数指针还要快。

## 作为输入参数
比如, 作为一个高阶函数的输入参数时, closure 可以有三种声明:
* Fn, 对应于 `引用`
* FnMut, 对应于 `可变引用`
* FnOnce, 对应于 `值`

## 作为输出参数
一个高阶函数也可以返回一个函数, 但需要加入 `impl` 前缀.
