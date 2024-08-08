// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::fmt;
use std::ptr;

fn main() {
    let msg: String = "Hello, Rust".to_owned();
    let msg2: String = "Hello, Rust".to_owned();
    let msg_ref: &dyn fmt::Debug = &msg;
    let msg_ref2: &dyn fmt::Debug = &msg;
    let msg_dsp_ref: &dyn fmt::Display = &msg;
    let msg2_ref: &dyn fmt::Debug = &msg2;

    assert!(ptr::eq(msg_ref, msg_ref2));
    assert!(!ptr::eq(msg_ref, msg2_ref));
    assert!(ptr::addr_eq(msg_ref, msg_dsp_ref));
    assert!(!ptr::addr_eq(msg_ref, msg2_ref));
}