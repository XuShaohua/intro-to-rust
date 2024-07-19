// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

//! Add "crate-name-" as prefix of binaries to bypass name confliction.

use std::env;
use std::ffi::OsStr;
use std::fs;
use std::io;

fn main() -> io::Result<()> {
    let dirname = env::current_dir()?;
    let crate_name: &str = dirname
        .as_path()
        .file_name()
        .and_then(OsStr::to_str)
        .expect("Failed to read crate foldername");

    // list .rs files in src/bin/
    for entry in fs::read_dir("src/bin")? {
        let entry = entry?;
        let filename = entry.file_name();
        if let Some(filename) = filename.to_str() {
            if !filename.ends_with(".rs") {
                continue;
            }

            if let Some((basename, _ext)) = filename.split_once('.') {
                // print to stdout
                println!("\n[[bin]]");
                println!(r###"name = "{crate_name}-{basename}""###);
                println!(r###"path = "src/bin/{filename}""###);
            }
        }
    }

    Ok(())
}
