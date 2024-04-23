// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of;

#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum Option2<T> {
    Some2(T),
    None2,
    Extra2,
}

impl<T> Option2<T> {
    #[must_use]
    #[inline]
    pub const fn is_some(&self) -> bool {
        matches!(self, Self::Some2(_))
    }

    #[must_use]
    #[inline]
    pub const fn is_none(&self) -> bool {
        matches!(self, Self::None2)
    }
}

fn main() {
    assert_eq!(size_of::<Option2<String>>(), 24);
    assert_eq!(size_of::<String>(), 24);
    let name: Option2<String> = Option2::Some2("Joey".to_owned());
    assert!(name.is_some());
    let null_name: Option2<String> = Option2::None2;
    let _extra_name: Option2<String> = Option2::Extra2;
    assert!(null_name.is_none());
}
