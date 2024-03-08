// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use std::ffi::{c_char, CStr};

extern "C" {
    static mut environ: *const *const c_char;
}

pub fn print_env() {
    unsafe {
        let mut env = environ;
        if !env.is_null(){
            while !(*env).is_null(){
                let entry = CStr::from_ptr(*env);
                println!("env: {}", entry.to_string_lossy());
                env = env.add(1);
            }
        }
    }
}

fn main() {
    print_env();
}