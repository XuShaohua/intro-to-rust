// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::fs;
use std::io;
use std::thread;
use std::time::Duration;

fn read_files() -> io::Result<()> {
    let mut is_shadow = false;
    loop {
        let filepath = if is_shadow {
            "/etc/shadow"
        } else {
            "/etc/passwd"
        };
        // 当尝试读取 shadow 文件 (当前用户无权读取) 时, 会终止无限循环.
        let content = fs::read_to_string(filepath)?;
        assert!(!content.is_empty());
        thread::sleep(Duration::from_secs(1));
        is_shadow = !is_shadow;
    }
}

fn main() {
    let ret = read_files();
    assert!(ret.is_err());
    assert_eq!(ret.err().unwrap().kind(), io::ErrorKind::PermissionDenied);
}