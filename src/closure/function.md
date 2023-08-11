
# Functions

## Diverging functions
就是一个函数不返回任何值, 比如一个 loop 无限循环, 或者线程会到止退出的.
目前, 只能通过调用 `panic!()` 或者 `unreachable!()` 来实现.

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
* `fn(...) -> ...`, 函数类型，只能是一般的函数.
* `Fn(...) -> ...`, 泛型函数，可以是一般的函数, 也可以是闭包.


## 作为返回值
```rust
fn create_fnmut() -> impl FnMut() {
  return move || println!("Hello FnMut()!");
}

let mut f = create_fnmut();
f();
```

## FnOnce
`FnOnce()` 这种声明的函数, 只能被调用一次, 通常是因为有值移到了函数内部, 转移了所有权.
