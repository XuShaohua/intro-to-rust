// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(dead_code)]

use std::{fmt, ptr};
use std::error::Error;
use std::fmt::Display;

use crate::termios;

#[derive(Debug)]
pub struct KeyboardReader {
    fd: i32,
    cooked: nc::termios_t,
}

#[derive(Debug, Clone, Copy, Eq, PartialEq, Hash)]
pub enum KeyboardError {
    SetAttr(nc::Errno),
    GetAttr(nc::Errno),
    ReadChar(nc::Errno),
}

impl Display for KeyboardError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let reason = match self {
            Self::SetAttr(_errno) => "Failed to set console mode",
            Self::GetAttr(_errno) => "Failed to get console mode",
            Self::ReadChar(_errno) => "Failed to read characters from stdin",
        };
        write!(f, "{reason}")
    }
}

impl Error for KeyboardError {}

impl KeyboardReader {
    pub fn new() -> Result<Self, KeyboardError> {
        let stdin_fd = 0;
        let cooked = unsafe {
            termios::get_attr(stdin_fd).map_err(KeyboardError::GetAttr)
        }?;

        let mut raw = cooked.clone();
        raw.c_cflag &= !(nc::ECHOE | nc::ICANON);
        // Setting a new line, then end of file
        raw.c_cc[nc::VEOL as usize] = 1;
        raw.c_cc[nc::VEOF as usize] = 2;
        raw.c_cc[nc::VTIME as usize] = 1;
        raw.c_cc[nc::VMIN as usize] = 0;

        unsafe {
            termios::set_attr(stdin_fd, nc::TCSANOW, &raw).map_err(KeyboardError::SetAttr)
        }?;

        Ok(Self {
            fd: stdin_fd,
            cooked,
        })
    }

    /// Read a single character from stdin.
    pub fn read_one(&mut self) -> Result<u8, KeyboardError> {
        let mut byte = [0_u8; 1];
        let _ret = unsafe {
            nc::read(self.fd, ptr::addr_of_mut!(byte) as usize, byte.len()).map_err
            (KeyboardError::ReadChar)
        }?;
        Ok(byte[0])
    }
}

impl Drop for KeyboardReader {
    fn drop(&mut self) {
        let ret = unsafe { termios::set_attr(self.fd, nc::TCSANOW, &self.cooked) };
        if let Err(errno) = ret {
            eprintln!("Failed to reset terminal attribute, reason: {:?}", nc::strerror(errno));
        }
    }
}