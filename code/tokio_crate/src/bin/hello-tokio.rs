// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use tokio::runtime;

async fn say_hello() {
    println!("Hello, tokio");
}

fn main() {
    let rt =
        runtime::Builder::new_multi_thread()
            .enable_all()
            .build()
            .expect("Failed to create runtime");

    rt.block_on(say_hello());
}