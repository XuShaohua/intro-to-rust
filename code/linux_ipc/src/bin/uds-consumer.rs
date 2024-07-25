// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::{fs, thread};
use std::io::Read;
use std::os::unix::net::UnixListener;
use std::sync::mpsc;
use std::sync::mpsc::Sender;

use linux_ipc::crab_sim::run_sim;
use linux_ipc::Error;
use linux_ipc::msg::KeyboardMsg;

fn main() -> Result<(), Error> {
    let (sender, receiver) = mpsc::channel();

    let _handle = thread::spawn(move || {
        if let Err(err) = worker_entry(sender) {
            eprintln!("Worker thread got err: {err:?}");
        }
    });

    run_sim(receiver)
}

fn worker_entry(sender: Sender<KeyboardMsg>) -> Result<(), Error> {
    let sock_path = "/tmp/crab-sim.sock";
    println!("Listening at uds {sock_path}");
    let listener = UnixListener::bind(sock_path)?;
    if let Some(stream) = listener.incoming().next() {
        let mut stream = stream?;
        let mut buf = [0; 256];
        while let Ok(n_read) = stream.read(&mut buf) {
            if n_read == 0 {
                eprintln!("[consumer] n_read == 0, broken pipe");
                break;
            }

            if let Ok(msg) = serde_json::from_slice(&buf[..n_read]) {
                let will_quit = msg == KeyboardMsg::Quit;
                let _ret = sender.send(msg);
                if will_quit {
                    break;
                }
            } else {
                eprintln!("[consumer] Invalid msg");
                break;
            }
        }
    }

    drop(listener);
    fs::remove_file(sock_path)?;

    Ok(())
}