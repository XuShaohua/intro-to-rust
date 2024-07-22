// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

//! Re-impl some functions in termios of libc.

use std::ptr;

/// Like `tcgetattr()` in libc.
pub unsafe fn get_attr(fd: i32) -> Result<nc::termios_t, nc::Errno> {
    let mut tio = nc::termios_t::default();
    nc::ioctl(fd, nc::TCGETS, ptr::addr_of_mut!(tio) as usize)?;
    Ok(tio)
}

/// Like `tcsetattr()` in libc.
pub unsafe fn set_attr(fd: i32, act: i32, tio: &nc::termios_t) -> Result<(), nc::Errno> {
    nc::ioctl(fd, nc::TCSETS + act, ptr::addr_of!(tio) as usize)
}