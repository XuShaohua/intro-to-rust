// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::ffi::c_void;
use std::ptr;

#[repr(u8)]
#[derive(Debug, Default, Clone, Copy)]
pub enum EventType {
    #[default]
    Any,
    Keyboard,
    Button,
    Map,
}

pub type WindowId = i32;

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct XAnyEvent {
    pub event_type: EventType,
    pub serial: usize,
    pub send_event: bool,
    pub display: *const c_void,
    pub window: WindowId,
}

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct XKeyEvent {
    pub event_type: EventType,
    pub serial: usize,
    pub send_event: bool,
    pub display: *const c_void,
    pub window: WindowId,
    pub root: WindowId,
    pub x: i32,
    pub y: i32,
    pub x_root: i32,
    pub y_root: i32,
    pub keycode: u32,
}


impl XKeyEvent {
    #[must_use]
    #[inline]
    pub fn new(window: WindowId, x: i32, y: i32, keycode: u32) -> Self {
        Self {
            event_type: EventType::Keyboard,
            serial: 0,
            send_event: false,
            display: ptr::null(),
            window,
            root: window,
            x,
            y,
            x_root: x,
            y_root: y,
            keycode,
        }
    }
}

#[repr(C)]
#[derive(Debug, Clone, Copy)]
pub struct XButtonEvent {
    pub event_type: EventType,
    pub serial: usize,
    pub send_event: bool,
    pub display: *const c_void,
    pub window: WindowId,
    pub root: WindowId,
    pub sub_window: WindowId,
    pub x: i32,
    pub y: i32,
    pub state: u32,
    pub button: u32,
}

#[repr(C)]
pub union XEvent {
    pub event_type: EventType,
    pub xany: XAnyEvent,
    pub xkey: XKeyEvent,
    pub xbutton: XButtonEvent,
}

fn main() {
    assert_eq!(size_of::<XEvent>(), 64);

    let event = XEvent {
        xkey: XKeyEvent::new(0x128a8, 40, 80, 95)
    };

    unsafe {
        match event.event_type {
            EventType::Any => println!("generic event"),
            EventType::Keyboard => {
                let x = event.xkey.x;
                let y = event.xkey.y;
                let keycode = event.xkey.keycode;
                println!("keyboard event at ({x}, {y}), keycode: 0x{keycode:0X}");
            }
            _ => eprintln!("Unhandled events"),
        }
    }
}