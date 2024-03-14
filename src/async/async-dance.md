# 第一个 async 程序

要创建一个 async 函数时, 只需要在 `fn` 关键字之前加上 `async` 即可:

```rust, not_run
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

```rust
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

下面的例子更为复杂:

```rust
use futures::executor::block_on;

#[derive(Debug)]
struct Song {
    name: String,
}

async fn learn_song() -> Song {
    println!("learn song()");
    Song {
        name: "Endless life".to_owned(),
    }
}

async fn sing_song(song: Song) {
    println!("Sing a song: {}", song.name);
}

async fn learn_and_sing() {
    let song = learn_song().await;
    sing_song(song).await;
}

async fn dance() {
    println!("dance()");
}

async fn async_main() {
    let f1 = learn_and_sing();
    let f2 = dance();
    futures::join!(f1, f2);
}

fn main() {
    block_on(async_main());
}
```

其中 `futures::join!()` 宏, 类似于 `.await`, 但它等待多个 Future 对象并发运行, 大致如下图如示:

![futures join](assets/async-dance.png)