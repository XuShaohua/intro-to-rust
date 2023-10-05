// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

//#[lang = "fn"]
//#[rustc_paren_sugar]
//#[fundamental]
pub trait Fn2<Args>: FnMut2<Args> {
    //extern "rust-call" fn call(&self, args: Args) -> Self::Output;
    fn call(&self, args: Args) -> Self::Output;
}

//#[lang = "fn_mut"]
//#[rustc_paren_sugar]
//#[fundamental]
#[must_use]
pub trait FnMut2<Args>: FnOnce2<Args> {
    //extern "rust-call" fn call(&self, args: Args) -> Self::Output;
    fn call(&self, args: Args) -> Self::Output;
}

//#[lang = "fn_once"]
//#[rustc_paren_sugar]
//#[fundamental]
//#[must_be]
pub trait FnOnce2<Args> {
    type Output;

    //extern "rust-call" fn call_once(self, args: Args) -> Self::Output;
    fn call_once(self, args: Args) -> Self::Output;
}
