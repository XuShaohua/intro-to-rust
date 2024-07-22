// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs::File;
#[cfg(unix)]
use std::os::fd::FromRawFd;
use std::sync::mpsc;
use std::thread;

use linux_ipc::crab_sim::run_sim;
use linux_ipc::keyboard_reader::KeyboardReader;
use linux_ipc::keycode::parse_keycode;
use linux_ipc::msg::KeyboardMsg;

// 1. create pipe
// 2. fork child process
// 3. run op in parent process
// 4. run sim in child process
fn main() {
    let mut fds: [i32; 2] = [-1, -1];
    let ret = unsafe { nc::pipe(&mut fds) };
    assert!(ret.is_ok());

    let [read_pipe, write_pipe] = fds;

    let pid = unsafe { nc::fork().expect("Failed to fork process") };
    if pid == 0 {
        // child process
        unsafe {
            let _ = nc::close(write_pipe);
        }
        child_entry(read_pipe);
        return;
    }

    // parent process
    unsafe {
        let _ = nc::close(read_pipe);
    }
    parent_entry(write_pipe);
}

fn child_entry(read_pipe: i32) {
    let file = unsafe { File::from_raw_fd(read_pipe) };
    let (sender, receiver) = mpsc::channel();
    let _handler = thread::spawn(move || {
        while let Ok(msg) = serde_json::from_reader(&file) {
            let _ = sender.send(msg);
        }
    });
    run_sim(receiver).unwrap();
}

fn parent_entry(write_pipe: i32) {
    let file = unsafe { File::from_raw_fd(write_pipe) };

    let mut input = KeyboardReader::new().expect("Failed to init keyboard reader");
    input.show_prompt();

    let mut running = true;
    while running {
        match input.read_one() {
            Ok(keycode) => {
                match parse_keycode(keycode) {
                    KeyboardMsg::None => {
                        // Invalid keyboard input.
                    }
                    msg @ KeyboardMsg::Quit => {
                        // Send quit to remote side.
                        serde_json::to_writer(&file, &msg).expect("Broken pipe");

                        // Quit self
                        running = false;
                    }
                    msg => {
                        // Proxy any msg to remote side.
                        serde_json::to_writer(&file, &msg).expect("Broken pipe");
                    }
                }
            }
            Err(err) => {
                eprintln!("err: {err:?}");
            }
        }
    }
}
