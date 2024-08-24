// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::io;

fn say_hello_dynamic(writer: &mut dyn io::Write) -> io::Result<usize> {
    writer.write(b"Hello, Rust dynamic dispatch with ref\n")
}

fn say_hello_dynamic_boxed(mut writer: Box<dyn io::Write>) -> io::Result<usize> {
    writer.write(b"Hello, Rust dynamic dispatch with boxed object\n")
}

fn main() {
    let _ret = say_hello_dynamic(&mut io::stdout());

    let _ret = say_hello_dynamic_boxed(Box::new(io::stdout()));
}