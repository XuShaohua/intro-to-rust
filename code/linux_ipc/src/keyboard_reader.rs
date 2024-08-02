// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::error::Error;
use std::fmt;
use std::fmt::Display;

use crate::termios;

#[derive(Debug)]
pub struct KeyboardReader {
    fd: i32,
    cooked: nc::termios_t,
}

pub type KeyCode = u8;

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
    /// # Errors
    ///
    /// Returns error if failed to get or set terminal attributes.
    pub fn new() -> Result<Self, KeyboardError> {
        let stdin_fd = 0;
        let cooked = termios::get_attr(stdin_fd).map_err(KeyboardError::GetAttr)?;

        let mut raw = cooked.clone();
        raw.c_lflag &= !(nc::ICANON | nc::ECHO);
        // Setting a new line, then end of file
        raw.c_cc[nc::VEOL] = 1;
        raw.c_cc[nc::VEOF] = 2;
        raw.c_cc[nc::VTIME] = 1;
        raw.c_cc[nc::VMIN] = 0;

        termios::set_attr(stdin_fd, nc::TCSANOW, &raw).map_err(KeyboardError::SetAttr)?;

        Ok(Self {
            fd: stdin_fd,
            cooked,
        })
    }

    /// Read a single character from stdin.
    ///
    /// # Errors
    ///
    /// Returns error if failed to read from stdin.
    pub fn read_one(&mut self) -> Result<KeyCode, KeyboardError> {
        let mut byte: [KeyCode; 1] = [0_u8];
        let _ret = unsafe { nc::read(self.fd, &mut byte).map_err(KeyboardError::ReadChar) }?;
        Ok(byte[0])
    }

    pub fn show_prompt() {
        println!("Reading from keyboard");
        println!("---------------------------");
        println!("Use arrow keys to move the crab.");
        println!("Use g|b|v|c|d|e|r|t keys to rotate to absolute orientations.");
        println!("'f' to cancel a rotation.");
        println!("'q' to quit.");
    }
}

/// Reset terminal raw mode on destruct.
impl Drop for KeyboardReader {
    fn drop(&mut self) {
        let ret = termios::set_attr(self.fd, nc::TCSANOW, &self.cooked);
        if let Err(errno) = ret {
            eprintln!(
                "Failed to reset terminal attribute, reason: {:?}",
                nc::strerror(errno)
            );
        }
    }
}
