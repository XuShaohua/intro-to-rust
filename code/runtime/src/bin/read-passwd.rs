// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs::File;
use std::io::{self, Read};

fn main() -> io::Result<()> {
    let mut file = File::open("/etc/passwd")?;
    let mut content = String::new();
    file.read_to_string(&mut content)?;
    assert!(content.starts_with("root:"));

    Ok(())
}
