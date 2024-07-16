// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use futures::executor::block_on;

async fn learn_song() {
    println!("learn song()");
}

async fn sing_song() {
    println!("Sing a song");
}

async fn learn_and_sing() {
    learn_song().await;
    sing_song().await;
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
