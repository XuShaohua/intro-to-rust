// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

//use std::ops::Deref;
#![allow(internal_features)]
#![feature(lang_items)]

#[lang = "deref"]
pub trait Deref2 {
    type Target: ?Sized;

    #[must_use]
    fn deref(&self) -> &Self::Target;
}

impl<T: ?Sized> Deref2 for &T {
    type Target = T;

    fn deref(&self) -> &T {
        *self
    }
}

impl<T: ?Sized> Deref2 for &mut T {
    type Target = T;

    fn deref(&self) -> &T {
        *self
    }
}

#[lang = "deref_mut"]
pub trait DerefMut2: Deref2 {
    fn deref_mut(&mut self) -> &mut Self::Target;
}

impl<T: ?Sized> DerefMut2 for &mut T {
    fn deref_mut(&mut self) -> &mut T {
        *self
    }
}

struct DerefExample<T> {
    value: T,
}

impl<T> Deref2 for DerefExample<T> {
    type Target = T;

    fn deref(&self) -> &Self::Target {
        &self.value
    }
}
