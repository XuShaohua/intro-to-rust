// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use linux_ipc::keyboard_reader::KeyboardReader;
use linux_ipc::keycode::parse_keycode;
use linux_ipc::msg::KeyboardMsg;

fn main() {
    KeyboardReader::show_prompt();
    let mut input = KeyboardReader::new().expect("Failed to init keyboard reader");
    let mut running = true;
    while running {
        match input.read_one() {
            Ok(keycode) => {
                match parse_keycode(keycode) {
                    KeyboardMsg::None => {
                        // Invalid keyboard input.
                    }
                    KeyboardMsg::Quit => {
                        println!("Send quit msg");
                        // Send quit to remote side.

                        // Quit self
                        running = false;
                    }
                    msg => {
                        println!("send msg: {msg:?}");
                        // Proxy any msg to remote side.
                    }
                }
            }
            Err(err) => {
                eprintln!("err: {err:?}");
            }
        }
    }
}
