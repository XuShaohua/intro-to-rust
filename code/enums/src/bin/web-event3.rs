// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(unused_variables, dead_code)]

use std::mem::size_of;

pub enum WebEventWithMoreStrings {
    PageLoad,
    PageUnload,
    KeyPress(char),
    Paste(String),
    Copy(String),
    Click { x: i32, y: i32 },
}

impl WebEventWithMoreStrings {
    fn tag(&self) -> u8 {
        unsafe { *(self as *const Self as *const u8) }
    }
}

fn main() {
    assert_eq!(size_of::<char>(), 4);
    assert_eq!(size_of::<String>(), 24);
    let mut s = "Hello, world".to_owned();
    s.reserve(3);
    println!("len: {}, cap: {}", s.len(), s.capacity());

    assert_eq!(size_of::<Option<String>>(), 24);
    assert_eq!(size_of::<WebEventWithMoreStrings>(), 32);
    let paste = WebEventWithMoreStrings::Paste(s.clone());
    let copy = WebEventWithMoreStrings::Copy(s);
    let keypress = WebEventWithMoreStrings::KeyPress('a');
    let click = WebEventWithMoreStrings::Click { x: 42, y: 43 };
    assert_eq!(keypress.tag(), 2);
    assert_eq!(paste.tag(), 3);
    assert_eq!(copy.tag(), 4);
    assert_eq!(click.tag(), 5);
}
