// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::fs::File;
use std::io::Read;
use std::sync::mpsc;
use std::thread;

use linux_ipc::crab_sim::run_sim;
use linux_ipc::Error;
use linux_ipc::msg::KeyboardMsg;

fn main() -> Result<(), Error> {
    let fifo_path = "/tmp/crab-sim.fifo";
    let (sender, receiver) = mpsc::channel();

    let _handler = thread::spawn(move || {
        let mut file = File::open(fifo_path).unwrap();
        let mut buf = [0; 256];
        while let Ok(n_read) = file.read(&mut buf) {
            if n_read == 0 {
                eprintln!("[io] n_read == 0, broken pipe");
                break;
            }

            if let Ok(msg) = serde_json::from_slice(&buf[..n_read]) {
                let will_quit = msg == KeyboardMsg::Quit;
                let _ret = sender.send(msg);
                if will_quit {
                    break;
                }
            } else {
                eprintln!("[io] Invalid msg");
                break;
            }
        }
        println!("[io] failed to read msg");
    });

    run_sim(receiver)
}
