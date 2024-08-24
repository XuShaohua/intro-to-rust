// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::io;

fn say_hello_static_impl(mut writer: impl io::Write) -> io::Result<usize> {
    writer.write(b"Hello, Rust static dispatch with impl Trait\n")
}

fn say_hello_static_generic<W: io::Write>(mut writer: W) -> io::Result<usize> {
    writer.write(b"Hello, Rust static dispatch with generic\n")
}

fn main() {
    let _ret = say_hello_static_impl(io::stdout());
    let _ret = say_hello_static_generic(io::stdout());
}