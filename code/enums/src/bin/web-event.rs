// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(unused_variables, dead_code)]

use std::mem::size_of;

pub enum WebEvent {
    PageLoad,
    PageUnload,
    KeyPress(char),
    Click { x: i32, y: i32 },
}

pub enum WebEventWithString {
    PageLoad,
    PageUnload,
    KeyPress(char),
    Paste(String),
    Click { x: i32, y: i32 },
}

impl WebEventWithString {
    fn tag(&self) -> u8 {
        unsafe { *(self as *const Self as *const u8) }
    }
}

pub enum WebEventWithMoreStrings {
    PageLoad,
    PageUnload,
    KeyPress(char),
    Paste(String),
    Paste2(String),
    Click { x: i32, y: i32 },
}

fn main() {
    assert_eq!(size_of::<char>(), 4);
    assert_eq!(size_of::<WebEvent>(), 12);
    assert_eq!(size_of::<String>(), 24);
    assert_eq!(size_of::<WebEventWithString>(), 24);

    let mut s = "Hello, world".to_owned();
    s.reserve(3);
    println!("len: {}, cap: {}", s.len(), s.capacity());
    let paste = WebEventWithString::Paste(s.clone());
    let paste2 = WebEventWithString::Paste(s.clone());
    let click = WebEventWithString::Click { x: 42, y: 43 };
    let keypress = WebEventWithString::KeyPress('a');
    // assert_eq!(paste.tag(), 3);
    // assert_eq!(click.tag(), 4);

    assert_eq!(size_of::<Option<String>>(), 24);
    assert_eq!(size_of::<WebEventWithMoreStrings>(), 32);
    // let paste = WebEventWithMoreStrings::Paste(s.clone());
    // let paste2 = WebEventWithMoreStrings::Paste2(s);
}
