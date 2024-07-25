// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(clippy::module_name_repetitions)]

use std::f32::consts::{FRAC_PI_2, FRAC_PI_4, PI};

use crate::keyboard_reader::KeyCode;
use crate::msg::{KeyboardMsg, RotateAbsolute, Twist};

const FRAC_PI_23: f32 = FRAC_PI_2 + FRAC_PI_4;

pub const KEYCODE_UP: KeyCode = 0x41;
pub const KEYCODE_DOWN: KeyCode = 0x42;
pub const KEYCODE_RIGHT: KeyCode = 0x43;
pub const KEYCODE_LEFT: KeyCode = 0x44;
pub const KEYCODE_B: KeyCode = 0x62;
pub const KEYCODE_C: KeyCode = 0x63;
pub const KEYCODE_D: KeyCode = 0x64;
pub const KEYCODE_E: KeyCode = 0x65;
pub const KEYCODE_F: KeyCode = 0x66;
pub const KEYCODE_G: KeyCode = 0x67;
pub const KEYCODE_Q: KeyCode = 0x71;
pub const KEYCODE_R: KeyCode = 0x72;
pub const KEYCODE_T: KeyCode = 0x74;
pub const KEYCODE_V: KeyCode = 0x76;

/// Convert keyboard control event to twist message.
#[must_use]
pub fn parse_keycode(keycode: KeyCode) -> KeyboardMsg {
    let to_linear = |linear: f64| {
        let mut twist = Twist::default();
        twist.linear.x = linear;
        KeyboardMsg::Twist(twist)
    };

    let to_angular = |angular: f64| {
        let mut twist = Twist::default();
        twist.angular.z = angular;
        KeyboardMsg::Twist(twist)
    };

    let to_rotate = |theta: f32| {
        let rotate = RotateAbsolute {
            theta,
            ..Default::default()
        };
        KeyboardMsg::Rotate(rotate)
    };

    match keycode {
        KEYCODE_LEFT => to_angular(1.0),
        KEYCODE_RIGHT => to_angular(-1.0),
        KEYCODE_UP => to_linear(1.0),
        KEYCODE_DOWN => to_linear(-1.0),
        KEYCODE_G => to_rotate(0.0),
        KEYCODE_T => to_rotate(FRAC_PI_4),
        KEYCODE_R => to_rotate(FRAC_PI_2),
        KEYCODE_E => to_rotate(FRAC_PI_23),
        KEYCODE_D => to_rotate(PI),
        KEYCODE_C => to_rotate(-FRAC_PI_23),
        KEYCODE_V => to_rotate(-FRAC_PI_2),
        KEYCODE_B => to_rotate(-FRAC_PI_4),
        KEYCODE_F => KeyboardMsg::CancelRotate,
        KEYCODE_Q => KeyboardMsg::Quit,
        _ => KeyboardMsg::None,
    }
}
