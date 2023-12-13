// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use lazy_static::lazy_static;
use std::sync::Mutex;

use crate::president::President;

lazy_static! {
    pub static ref GLOBAL_PRESIDENT: Mutex<President> =
        Mutex::new(President::new("LazyStaticMacro"));
}
