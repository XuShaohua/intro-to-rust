// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

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
