// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use lazy_static::lazy_static;
use std::sync::Mutex;

lazy_static! {
    pub static ref GLOBAL_PRESIDENT: Mutex<President> =
        Mutex::new(President::new("LazyStaticMacro"));
}

pub struct President {
    name: String,
}

impl President {
    #[must_use]
    pub const fn empty() -> Self {
        Self {
            name: String::new(),
        }
    }

    #[must_use]
    pub fn new(name: &str) -> Self {
        Self {
            name: name.to_owned(),
        }
    }

    #[must_use]
    pub fn name(&self) -> &str {
        &self.name
    }

    pub fn set_name(&mut self, name: &str) {
        self.name.clear();
        self.name.push_str(name);
    }
}

fn main() {
    GLOBAL_PRESIDENT
        .lock()
        .unwrap()
        .set_name("Trump[lazy_static]");
    println!(
        "President name: {}",
        GLOBAL_PRESIDENT.lock().unwrap().name()
    );
}
