// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

//! Re-impl some functions in termios of libc.

/// Like `tcgetattr()` in libc.
///
/// # Errors
///
/// Returns error if `ioctl()` fails.
pub fn get_attr(fd: i32) -> Result<nc::termios_t, nc::Errno> {
    let mut tio = nc::termios_t::default();
    unsafe {
        nc::ioctl(fd, nc::TCGETS, &mut tio as *mut nc::termios_t as *const _)?;
    }
    Ok(tio)
}

/// Like `tcsetattr()` in libc.
///
/// # Errors
///
/// Returns error if `ioctl()` fails.
pub fn set_attr(fd: i32, act: u32, tio: &nc::termios_t) -> Result<(), nc::Errno> {
    if act > 2 {
        return Err(nc::EINVAL);
    }
    unsafe {
        nc::ioctl(
            fd,
            nc::TCSETS + act,
            tio as *const nc::termios_t as *const _,
        )
        .map(drop)
    }
}
