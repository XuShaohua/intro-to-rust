
# Fn, FnMut and FnOnce

作为输入参数. 比如, 作为一个高阶函数的输入参数时, 闭包 closure 可以有三种声明:
- Fn, 对应于 "引用" (reference)
- FnMut, 对应于 "可变引用" (mutable reference)
- FnOnce, 对应于 "值" (consumed value)

## Generic
Function Trait:
```rust
fn apply_to_3<F>(f: F) -> i32
  where F: Fn(i32) -> i32,
{
  return f(3);
}
```

区别:
- `fn(...) -> ...`, 函数类型，只能是一般的函数
- `Fn(...) -> ...`, 泛型函数，可以是一般的函数, 也可以是闭包

## FnOnce
`FnOnce()` 这种声明的函数, 只能被调用一次, 通常是因为有值移到了函数内部, 转移了所有权.
