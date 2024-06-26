// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ffi::{c_char, CStr, CString};

extern "C" {
    fn getenv(name: *const c_char) -> *const c_char;
}

pub fn getenv_safe(name: &str) -> String {
    let name_cstr = CString::new(name).unwrap();
    let cstr = unsafe { CStr::from_ptr(getenv(name_cstr.as_ptr())) };
    cstr.to_string_lossy().to_string()
}

fn main() {
    let path = getenv_safe("PATH");
    println!("PATH:{path}");
}
