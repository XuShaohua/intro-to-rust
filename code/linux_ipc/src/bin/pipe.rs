// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut fds = [-1, -1];
    let ret = unsafe { nc::pipe(&mut fds) };
    assert!(ret.is_ok());
}
