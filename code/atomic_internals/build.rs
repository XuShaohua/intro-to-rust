// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::fs;

fn main() {
    // See https://stackoverflow.com/questions/794632/programmatically-get-the-cache-line-size
    let path = "/sys/devices/system/cpu/cpu0/cache/index0/coherency_line_size";
    let content = fs::read_to_string(path).unwrap();
    let size: usize = content.trim().parse().unwrap();
    println!(r#"cargo:rustc-check-cfg=cfg(cache_size, values("16", "32", "64", "128", "256"))"#);
    println!("cargo:rustc-cfg=cache_size=\"{size}\"");
}