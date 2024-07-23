// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::fs::File;
use std::io::{Read, Write};
use std::os::fd::{FromRawFd, OwnedFd};
use std::thread;
use std::time::Duration;

use serde::{Deserialize, Serialize};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct Msg {
    pub payload: String,
}

fn main() {
    let mut fds = [0; 2];
    let _ret = unsafe { nc::pipe(&mut fds) };
    let [read_pipe, write_pipe] = fds;

    let pid = unsafe { nc::fork().expect("Fork failed") };
    if pid == 0 {
        unsafe {
            let _ = nc::close(write_pipe);
        }

        child_entry(read_pipe);
        return;
    }

    unsafe {
        let _ = nc::close(read_pipe);
    }

    // parent process
    parent_entry(write_pipe);
}

fn child_entry(read_pipe: i32) {
    let mut buf = [0; 64];
    let mut file = unsafe { File::from(OwnedFd::from_raw_fd(read_pipe)) };
    while let Ok(n_read) = file.read(&mut buf) {
        if n_read == 0 {
            println!("[child] n_read is 0");
            break;
        }
        let msg = serde_json::from_slice::<Msg>(&buf[..n_read]);
        println!("[child] msg: {msg:?}");
    }
}

fn parent_entry(write_pipe: i32) {
    let mut file = unsafe { File::from_raw_fd(write_pipe) };

    let msg = Msg {
        payload: "Greeting".to_owned(),
    };
    let text = serde_json::to_string(&msg).expect("Serialization failed");

    loop {
        if let Err(err) = file.write(text.as_bytes()) {
            eprintln!("[parent] Failed to write to pipe, err: {err:?}");
            break;
        }
        thread::sleep(Duration::from_secs(1));
    }
}