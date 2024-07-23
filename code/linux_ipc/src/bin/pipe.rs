// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs::File;
use std::io::{Read, Write};
#[cfg(unix)]
use std::os::fd::FromRawFd;
use std::os::fd::OwnedFd;
use std::sync::mpsc;
use std::thread;

use linux_ipc::crab_sim::run_sim;
use linux_ipc::keyboard_reader::KeyboardReader;
use linux_ipc::keycode::parse_keycode;
use linux_ipc::msg::KeyboardMsg;
use linux_ipc::process::wait_child_process;

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
        let curr_pid = unsafe { nc::getpid() };
        println!("child pid: {curr_pid}");
        // child process
        unsafe {
            let _ = nc::close(write_pipe);
        }
        child_entry(read_pipe);
        unsafe {
            nc::exit(0);
        }
    }
    let curr_pid = unsafe { nc::getpid() };
    println!("parent pid: {curr_pid}, child pid: {pid}");

    // parent process
    unsafe {
        let _ = nc::close(read_pipe);
    }
    parent_entry(write_pipe);
}

fn child_entry(read_pipe: i32) {
    let (sender, receiver) = mpsc::channel();

    let handler = thread::spawn(move || {
        let mut file = unsafe { File::from(OwnedFd::from_raw_fd(read_pipe)) };
        println!("[child] create file from raw fd: {read_pipe}");
        let mut buf = [0; 256];
        while let Ok(n_read) = file.read(&mut buf) {
            if n_read == 0 {
                eprintln!("[child] n_read == 0, broken pipe");
                break;
            }
            if let Ok(msg) = serde_json::from_slice(&buf[..n_read]) {
                let _ret = sender.send(msg);
            } else {
                eprintln!("Invalid msg");
                break;
            }
        }
        println!("child_entry failed to read msg");
    });
    let _ret = run_sim(receiver);
    println!("[child] run_sim() exited");
    let _ret = handler.join();
    println!("[child] handler.join()");
}

fn parent_entry(write_pipe: i32) {
    let mut file = unsafe { File::from_raw_fd(write_pipe) };
    let mut write_msg = |msg: &KeyboardMsg| {
        let text = serde_json::to_string(msg).expect("Failed to serialize msg");
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

    wait_child_process(1);
}
