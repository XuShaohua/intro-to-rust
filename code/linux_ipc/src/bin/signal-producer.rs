// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::env;

use linux_ipc::error::Error;
use linux_ipc::keyboard_reader::KeyboardReader;
use linux_ipc::keycode;
use linux_ipc::signal_keycode::SIGNAL_KEYCODE;

fn main() -> Result<(), Error> {
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 {
        return Err(Error::Others(format!("Usage: {} consumer-pid", args[0])));
    }
    let consumer_pid: i32 = match args[1].parse::<i32>() {
        Ok(pid) => pid,
        Err(err) => {
            return Err(Error::Others(format!(
                "Failed to parse consumer pid, err: {err:?}"
            )))
        }
    };

    KeyboardReader::show_prompt();
    let mut input = KeyboardReader::new().expect("Failed to init keyboard reader");

    let mut is_running = true;
    while is_running {
        let keycode = input.read_one().expect("Failed to read input");
        if let Ok(index) = SIGNAL_KEYCODE.binary_search_by_key(&keycode, |pair| pair.1) {
            let sig_num = SIGNAL_KEYCODE[index].0;
            println!("Sending signal {sig_num} to {consumer_pid}");
            is_running = keycode != keycode::KEYCODE_Q;
            if let Err(errno) = unsafe { nc::kill(consumer_pid, sig_num) } {
                eprintln!(
                    "failed to send signal to consumer, err: {:?}",
                    nc::strerror(errno)
                );
                is_running = false;
            }
        }
    }

    Ok(())
}
