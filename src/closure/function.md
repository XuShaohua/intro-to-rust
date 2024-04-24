# Functions

## Diverging functions

就是一个函数不返回任何值, 比如一个 loop 无限循环, 或者线程会到止退出的.

目前, 只能通过调用 `panic!()` 或者 `unreachable!()` 来实现:

```rust, ignore
impl Server {
  pub fn run(self) -> ! {
    loop {
      ...
    }
  }
}
```

## 作为返回值

```rust
fn create_fnmut() -> impl FnMut() {
  return move || println!("Hello FnMut()!");
}

let mut f = create_fnmut();
f();
```