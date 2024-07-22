// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#![allow(clippy::module_name_repetitions)]

use serde::{Deserialize, Serialize};

/// Represents a vector in free space.
///
/// It is always anchored at the origin.
#[derive(Debug, Default, Clone, PartialEq, Serialize, Deserialize)]
pub struct Vector3 {
    pub x: f64,
    pub y: f64,
    pub z: f64,
}

/// Twist expresses velocity in free space broken into its linear and angular parts.
#[derive(Debug, Default, Clone, PartialEq, Serialize, Deserialize)]
pub struct Twist {
    pub linear: Vector3,
    pub angular: Vector3,
}

#[derive(Debug, Default, Clone, Copy, PartialEq, Eq, Hash, Serialize, Deserialize)]
pub struct Color {
    pub red: u8,
    pub green: u8,
    pub blue: u8,
}

pub const DEFAULT_BACKGROUND: Color = Color {
    red: 0x45,
    green: 0x56,
    blue: 0xff,
};

#[derive(Debug, Default, Clone, PartialEq, Serialize, Deserialize)]
pub struct Pose {
    pub x: f32,
    pub y: f32,
    pub theta: f32,

    pub linear_velocity: f32,
    pub angular_velocity: f32,
}

#[derive(Debug, Default, Clone, PartialEq, Serialize, Deserialize)]
pub struct RotateAbsolute {
    /// The desired heading in radians.
    pub theta: f32,
    /// The angular displacement in radians to the starting position.
    pub delta: f32,
    /// The remaining rotation in radians.
    pub remaining: f32,
}

#[derive(Debug, Default, Clone, PartialEq, Serialize, Deserialize)]
pub enum KeyboardMsg {
    Twist(Twist),
    Rotate(RotateAbsolute),
    CancelRotate,
    Quit,

    #[default]
    None,
}
