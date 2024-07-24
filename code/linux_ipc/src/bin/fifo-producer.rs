// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::fs;
use std::fs::OpenOptions;
use std::io::Write;

use linux_ipc::error::Error;
use linux_ipc::keyboard_reader::KeyboardReader;
use linux_ipc::keycode::parse_keycode;
use linux_ipc::msg::KeyboardMsg;

fn main() -> Result<(), Error> {
    let fifo_path = "/tmp/crab-sim.fifo";
    unsafe {
        if let Err(errno) = nc::mknod(fifo_path, nc::S_IFIFO | nc::S_IRUSR | nc::S_IWUSR,
                                      0) {
            if errno != nc::EEXIST {
                let reason = format!("Failed to create fifo, err: {:?}", nc::strerror(errno));
                return Err(Error::Others(reason));
            }
        }
    };

    println!("open() is blocked until consumer program is started.");
    let mut file = OpenOptions::new().write(true).open(fifo_path)?;
    let mut write_msg = |msg: &KeyboardMsg| {
        let text = serde_json::to_string(msg)?;
        file.write_all(text.as_bytes())
    };
    KeyboardReader::show_prompt();
    let mut input = KeyboardReader::new().expect("Failed to init keyboard reader");

    let mut running = true;
    while running {
        let keycode = input.read_one().expect("Failed to read input");
        match parse_keycode(keycode) {
            KeyboardMsg::None => {
                // Invalid keyboard input.
            }
            msg @ KeyboardMsg::Quit => {
                // Send quit to remote side.
                if let Err(err) = write_msg(&msg) {
                    println!("Broken pipe, got: {err:?}");
                }
                // Quit self
                running = false;
            }
            msg => {
                println!("main_entry, msg: {msg:?}");
                // Proxy any msg to remote side.
                if let Err(err) = write_msg(&msg) {
                    println!("Broken pipe, got: {err:?}");
                    running = false;
                }
            }
        }
    }

    fs::remove_file(fifo_path)?;
    Ok(())
}