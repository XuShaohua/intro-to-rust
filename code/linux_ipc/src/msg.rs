// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

/// Represents a vector in free space.
///
/// It is always anchored at the origin.
#[derive(Debug, Clone, PartialEq)]
pub struct Vector3 {
    pub x: f64,
    pub y: f64,
    pub z: f64,
}

/// Twist expresses velocity in free space broken into its linear and angular parts.
#[derive(Debug, Clone, PartialEq)]
pub struct Twist {
    pub linear: Vector3,
    pub angular: Vector3,
}

