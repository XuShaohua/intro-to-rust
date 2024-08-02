// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::mpsc::Receiver;

use crate::error::Error;
use crate::msg::KeyboardMsg;

pub fn run_sim(receiver: Receiver<KeyboardMsg>) -> Result<(), Error> {
    loop {
        match receiver.recv() {
            Ok(msg) => {
                println!("[crab_sim] msg: {msg:?}");
                if msg == KeyboardMsg::Quit {
                    return Ok(());
                }
            }
            Err(error) => return Err(error.into()),
        }
    }
}
