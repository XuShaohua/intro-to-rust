// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![deny(
    warnings,
    clippy::all,
    clippy::cargo,
    clippy::nursery,
    clippy::pedantic
)]
#![allow(dead_code)]
#![allow(clippy::multiple_crate_versions)]

pub use error::Error;

pub mod crab_sim;
pub mod error;
pub mod keyboard_reader;
pub mod keycode;
pub mod msg;
pub mod process;
pub mod termios;

