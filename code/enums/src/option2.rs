// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

extern crate core;

use core::pin::Pin;

pub enum Option2<T> {
    None2,
    Some2(T),
}

pub use Option2::{None2, Some2};

impl<T> Option2<T> {
    pub fn is_some(&self) -> bool {
        match *self {
            Some2(_) => true,
            None2 => false,
        }
    }

    pub fn is_none(&self) -> bool {
        !self.is_some()
    }

    pub fn contains<U>(&self, x: &U) -> bool
    where
        U: PartialEq<T>,
    {
        match self {
            Some2(y) => x == y,
            None2 => false,
        }
    }

    pub fn as_ref(&self) -> Option2<&T> {
        match *self {
            Some2(ref x) => Some2(x),
            None2 => None2,
        }
    }

    pub fn as_mut(&mut self) -> Option2<&mut T> {
        match *self {
            Some2(ref mut x) => Some2(x),
            None2 => None2,
        }
    }

    pub fn as_pin_ref<'a>(self: Pin<&'a Option2<T>>) -> Option2<Pin<&'a T>> {
        unsafe { Pin::get_ref(self).as_ref().map(|x| Pin::new_unchecked(x)) }
    }

    pub fn expect(self, msg: &str) -> T {
        match self {
            Some2(val) => val,
            None2 => panic!("{msg}"),
        }
    }

    pub fn unwrap(self) -> T {
        match self {
            Some2(val) => val,
            None2 => panic!("called `Option2::unwrap()` on a `None2` value"),
        }
    }

    pub fn unwrap_or(self, def: T) -> T {
        match self {
            Some2(x) => x,
            None2 => def,
        }
    }

    pub fn unwrap_or_else<F: FnOnce() -> T>(self, f: F) -> T {
        match self {
            Some2(x) => x,
            None2 => f(),
        }
    }

    pub fn map<U, F: FnOnce(T) -> U>(self, f: F) -> Option2<U> {
        match self {
            Some2(x) => Some2(f(x)),
            None2 => None2,
        }
    }

    pub fn map_or<U, F: FnOnce(T) -> U>(self, def: U, f: F) -> U {
        match self {
            Some2(x) => f(x),
            None2 => def,
        }
    }

    pub fn map_or_else<U, D: FnOnce() -> U, F: FnOnce(T) -> U>(self, def: D, f: F) -> U {
        match self {
            Some2(x) => f(x),
            None2 => def(),
        }
    }

    pub fn ok_or<E>(self, err: E) -> Result<T, E> {
        match self {
            Some2(x) => Ok(x),
            None2 => Err(err),
        }
    }

    pub fn ok_or_else<E, F: FnOnce() -> E>(self, err: F) -> Result<T, E> {
        match self {
            Some2(x) => Ok(x),
            None2 => Err(err()),
        }
    }

    pub fn and<U>(self, optb: Option2<U>) -> Option2<U> {
        match self {
            Some2(_) => optb,
            None2 => None2,
        }
    }

    pub fn and_then<U, F: FnOnce(T) -> Option2<U>>(self, f: F) -> Option2<U> {
        match self {
            Some2(x) => f(x),
            None2 => None2,
        }
    }

    pub fn filter<P: FnOnce(&T) -> bool>(self, predicate: P) -> Self {
        if let Some2(x) = self {
            if predicate(&x) {
                return Some2(x);
            }
        }
        return None2;
    }
}
