// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use once_cell::sync::Lazy;
use std::sync::Mutex;

use crate::president::President;

pub static GLOBAL_PRESIDENT: Lazy<Mutex<President>> =
    Lazy::new(|| Mutex::new(President::new("OnceCell::Lazy")));
