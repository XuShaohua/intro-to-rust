// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use linux_ipc::termios;

fn main() {
    let fd = 0;
    let cooked = termios::get_attr(fd).unwrap();
    let ret = termios::set_attr(fd, nc::TCSANOW, &cooked);
    assert!(ret.is_ok());
}
