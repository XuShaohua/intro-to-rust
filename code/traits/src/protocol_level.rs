// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::convert::TryFrom;

/// Current version of MQTT protocol can be:
/// * 3.1
/// * 3.1.1
/// * 5.0
#[repr(u8)]
#[derive(Debug, Default, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum ProtocolLevel {
    /// MQTT 3.1
    V3 = 3,

    /// MQTT 3.1.1
    #[default]
    V4 = 4,

    /// MQTT 5.0
    V5 = 5,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum DecodeError {
    InvalidProtocolLevel,
}

impl TryFrom<u8> for ProtocolLevel {
    type Error = DecodeError;

    fn try_from(v: u8) -> Result<Self, Self::Error> {
        match v {
            3 => Ok(Self::V3),
            4 => Ok(Self::V4),
            5 => Ok(Self::V5),

            _ => Err(DecodeError::InvalidProtocolLevel),
        }
    }
}
