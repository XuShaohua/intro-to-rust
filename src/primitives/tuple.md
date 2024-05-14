# 元组 Tuple

元组 tuple, 比如 `(1, 'a', true)`, 用于存放定长的不同数据类型,
而数组 (array) 则用于存放定长的相同数据类型.

比如: `(1, 2, false, 3.14)`,

- 可以组合各种不同类型的数据, 而 array 只能存放相同类型的数据
- 与 array 一样, 编译期即可确定其元素个数
- 与 array 一样, 使用下标访问元素, 而不是像 struct 那样使用元素名来访问
- 常使用它做为函数返回值, 这样函数就可以返回多个值

Rust 允许在使用逗号的地方, 在最后一个元素尾部多加一个逗号以方使书写. 比如:

- `fn foo(a: i32, b:i32,);`
- `(48, 42,)`
- `enum Colors { Red, Green, Blue, }`

## Unit type

空的 tuple 不包含任何元素, 写成 `()`, 也称为 `unit type`, 有点类似于C中的 `void`.

比如, 一个函数如果没有任何返回值, 那它返回的就是 unit type, 它的返回值类型可以省去.

```rust
fn main() {
  println!("hello, world");
}
```

就相当于:

```rust
fn main() -> () {
  println!("hello, world");
}
```

## tuple 的内存布局