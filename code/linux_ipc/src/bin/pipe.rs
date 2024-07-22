// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs::File;
use std::io::{BufReader, BufWriter};
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
    let _handler = thread::spawn(move || {
        let file = unsafe { File::from_raw_fd(read_pipe) };
        let mut buf_reader = BufReader::new(file);
        while let Ok(msg) = serde_json::from_reader(&mut buf_reader) {
            let _ = sender.send(msg);
        }
    });
    run_sim(receiver).unwrap();
}

fn parent_entry(write_pipe: i32) {
    let file = unsafe { File::from_raw_fd(write_pipe) };
    let mut buf_writer = BufWriter::new(file);

    KeyboardReader::show_prompt();
    let mut input = KeyboardReader::new(true).expect("Failed to init keyboard reader");

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
                        if let Err(err) = serde_json::to_writer(&mut buf_writer, &msg) {
                            println!("Broken pipe, got: {err:?}");
                        }

                        // Quit self
                        running = false;
                    }
                    msg => {
                        println!("key msg: {msg:?}");
                        // Proxy any msg to remote side.
                        if let Err(err) = serde_json::to_writer(&mut buf_writer, &msg) {
                            println!("Broken pipe, got: {err:?}");
                            running = false;
                        }
                    }
                }
            }
            Err(err) => {
                eprintln!("err: {err:?}");
            }
        }
    }
}
