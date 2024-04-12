// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::OnceLock;
use std::thread;

fn main() {
    static CELL: OnceLock<String> = OnceLock::new();
    assert!(CELL.get().is_none());

    let handle = thread::spawn(|| {
        let value: &String = CELL.get_or_init(|| "Hello, world".to_owned());
        assert_eq!(value, "Hello, world");
    });
    handle.join().unwrap();

    let value: Option<&String> = CELL.get();
    assert!(value.is_some());
    assert_eq!(value.unwrap().as_str(), "Hello, world");
}
