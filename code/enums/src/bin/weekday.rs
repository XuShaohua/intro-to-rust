// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of;

#[repr(u32)]
#[derive(Debug, Default, Clone, Copy, Eq, PartialEq)]
pub enum Weekday {
    #[default]
    Monday,
    Tuesday,
    Wednesday,
    Thursday,
    Friday,
    Saturday,
    Sunday,
}

impl Weekday {
    pub const fn is_weekend(self) -> bool {
        matches!(self, Self::Saturday | Self::Sunday)
    }
}

fn main() {
    assert_eq!(size_of::<Weekday>(), 4);

    let monday = Weekday::Monday;
    let _tuesday = Weekday::Tuesday;
    assert!(!monday.is_weekend());
}
