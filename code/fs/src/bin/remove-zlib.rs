// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

//! Remove `(z-lib.org)` pattern from filename.

use std::env;
use std::fs;
use std::io;
use std::process;

const PATTERN: &str = " (z-lib.org)";

fn rename_files(dirname: &str) -> io::Result<()> {
    for entry in fs::read_dir(dirname)?.flatten() {
        let path = entry.path();
        if !path.is_file() {
            continue;
        }
        let file_name = path.file_name().unwrap().to_str().unwrap();
        if file_name.contains(PATTERN) {
            let mut new_path = path.clone();
            let new_name = file_name.replace(PATTERN, "");
            new_path.set_file_name(new_name);
            println!("old name: {file_name}, new_path: {new_path:?}");
            fs::rename(&path, &new_path)?;
        }
    }

    Ok(())
}

fn main() -> io::Result<()> {
    let dirs: Vec<String> = env::args().skip(1).collect();
    if dirs.is_empty() {
        eprintln!("Usage: remove-zlib path-to-directory");
        process::exit(1);
    }
    for dirname in dirs {
        rename_files(&dirname)?;
    }
    Ok(())
}
