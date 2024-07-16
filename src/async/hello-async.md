# 第一个 async 程序

要创建一个 async 函数时, 只需要在 `fn` 关键字之前加上 `async` 即可:

```rust, ignore
async fn hello() {
    ...
}
```

首先引入 `futures` 库, 使用命令 `cargo add futures`, 会在 `Cargo.toml`里加入:

```toml
[dependencies]
futures = "0.3.30"
```

之后是 `main.rs` 里的代码:

```rust, ignore
use futures::executor::block_on;

async fn say_hello() {
    println!("Hello, async rust!");
}

fn main() {
    let future = say_hello();
    block_on(future);
}
```

以上代码:

- `async fn` 函数的返回值是一个 `Future`, 下一节会详细介绍 `Future` 相关的.
- `block_on()` 会阻塞当前线程, 直到 `Future` 运行完成

在 `async fn` 函数内部, 可以使用 `.await` 来等待另一个实现了 `Future` trait 的对象运行完成.
