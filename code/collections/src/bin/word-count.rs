// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use std::collections::HashMap;
use std::fs::File;
use std::io::{self, BufRead, BufReader};

fn main() -> Result<(), io::Error> {
    let mut words = HashMap::<String, i32>::new();
    let fd = File::open("/etc/passwd")?;
    let reader = BufReader::new(fd);

    for line in reader.lines() {
        for word in line?.split(':') {
            words
                .entry(word.to_owned())
                .and_modify(|counter| *counter += 1)
                .or_insert(1);
        }
    }

    for (word, counter) in &words {
        println!("{word}: {counter}");
    }
    Ok(())
}
