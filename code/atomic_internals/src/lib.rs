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
#![allow(clippy::module_name_repetitions)]

pub mod backoff;
pub mod cache_padded;
pub mod clh_lock;
pub mod lock;
pub mod mcs_lock;
pub mod mcs_parking_lock;
pub mod spin_lock;
pub mod ticket_lock;
