// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use crate::Bound::{Excluded, Included, Unbounded};

#[derive(Copy, Clone, PartialEq, Eq, Hash)]
pub struct RangeFull;

#[derive(Clone, PartialEq, Eq, Hash)]
pub struct Range<Idx> {
    pub start: Idx,
    pub end: Idx,
}

#[derive(Clone, PartialEq, Eq, Hash)]
pub struct RangeFrom<Idx> {
    pub start: Idx,
}

#[derive(Clone, PartialEq, Eq, Hash)]
pub struct RangeTo<Idx> {
    pub end: Idx,
}

#[derive(Clone)]
pub struct RangeInclusive<Idx> {
    pub(crate) start: Idx,
    pub(crate) end: Idx,
    pub(crate) is_empty: Option<bool>,
}

#[derive(Copy, Clone, PartialEq, Eq, Hash)]
pub struct RangeToInclusive<Idx> {
    pub end: Idx,
}

#[derive(Copy, Clone, Debug, Hash, PartialEq, Eq)]
pub enum Bound<T> {
    Included(T),
    Excluded(T),
    Unbounded,
}

pub trait RangeBounds<T: ?Sized> {
    fn start_bound(&self) -> Bound<&T>;
    fn end_bound(&self) -> Bound<&T>;

    fn contains<U>(&self, item: &U) -> bool
    where
        T: PartialOrd<U>,
        U: ?Sized + PartialOrd<T>,
    {
        (match self.start_bound() {
            Included(start) => start <= item,
            Excluded(start) => start < item,
            Unbounded => true,
        }) && (match self.end_bound() {
            Included(end) => item <= end,
            Excluded(end) => item < end,
            Unbounded => true,
        })
    }
}

fn main() {
    println!("range: {:?}", (1..3));

    let mut map = std::collections::BTreeMap::new();
    map.insert(3, "a");
    map.insert(5, "b");
    map.insert(8, "c");
    for (key, value) in map.range((std::ops::Bound::Included(3), std::ops::Bound::Included(9))) {
        println!("key: {}, value: {}", key, value);
    }
}
