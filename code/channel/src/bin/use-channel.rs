// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs::File;
use std::io::{self, Read};
use std::sync::mpsc::channel;
use std::thread::{spawn, JoinHandle};

fn main() {
    let filenames = ["/etc/issue", "/etc/passwd"];

    let (sender, receiver) = channel();
    let handle: JoinHandle<io::Result<()>> = spawn(move || -> io::Result<()> {
        for filename in &filenames {
            let mut fh = File::open(filename)?;
            let mut content = String::new();
            fh.read_to_string(&mut content)?;

            if sender.send(content).is_err() {
                break;
            }
        }

        Ok(())
    });

    for content in receiver {
        println!("content: {}", content);
    }

    let ret = handle.join().unwrap();
    println!("ret: {:?}", ret);
}
