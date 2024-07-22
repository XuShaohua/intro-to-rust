// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::mpsc;
use std::thread;
use std::time::Duration;

use linux_ipc::crab_sim::run_sim;
use linux_ipc::msg::KeyboardMsg;

fn main() {
    let (sender, receiver) = mpsc::channel();
    let _handler = thread::spawn(move || {
        if let Err(err) = sender.send(KeyboardMsg::Quit) {
            eprintln!("Failed to send msg to receiver, err: {err:?}");
        } else {
            thread::sleep(Duration::from_secs(1));
        }
    });
    run_sim(receiver).unwrap();
}
