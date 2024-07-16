// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::future::{self, Future, Ready};
use std::pin::Pin;
use std::task::{Context, Poll};
use std::thread;
use std::time::Duration;

use futures::executor;

async fn say_hello() {
    println!("Hello, Rust");
}

#[allow(clippy::manual_async_fn)]
fn say_hello_expanded() -> impl Future<Output=()> {
    async {
        println!("Hello, Rust async");
    }
}

struct EmptyFuture {}

impl Future for EmptyFuture {
    type Output = ();
    fn poll(self: Pin<&mut Self>, _ctx: &mut Context<'_>) -> Poll<Self::Output> {
        Poll::Ready(())
    }
}

fn say_hello_explicit_future() -> EmptyFuture {
    println!("Hello, Rust async");
    EmptyFuture {}
}

fn say_hello_with_ready() -> Ready<()> {
    println!("Hello, Rust async");
    future::ready(())
}

fn main() {
    let hello = say_hello();
    executor::block_on(hello);

    let hello = say_hello_expanded();
    executor::block_on(hello);

    let hello: EmptyFuture = say_hello_explicit_future();
    executor::block_on(hello);

    let hello: Ready<()> = say_hello_with_ready();
    executor::block_on(hello);

    thread::sleep(Duration::from_secs(1));
}
