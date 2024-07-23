// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

//! Re-impl some functions in termios of libc.

use std::ptr;

/// Like `tcgetattr()` in libc.
///
/// # Errors
///
/// Returns error if `ioctl()` fails.
pub fn get_attr(fd: i32) -> Result<nc::termios2_t, nc::Errno> {
    let mut tio = nc::termios2_t::default();
    unsafe {
        nc::ioctl(fd, nc::TCGETS, ptr::from_mut(&mut tio) as usize)?;
    }
    Ok(tio)
}

/// Like `tcsetattr()` in libc.
///
/// # Errors
///
/// Returns error if `ioctl()` fails.
pub fn set_attr(fd: i32, act: i32, tio: &nc::termios2_t) -> Result<(), nc::Errno> {
    #[allow(clippy::manual_range_contains)]
    if act < 0 || act > 2 {
        return Err(nc::EINVAL);
    }
    unsafe { nc::ioctl(fd, nc::TCSETS + act, ptr::from_ref(&tio) as usize) }
}
