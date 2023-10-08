// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]
#![allow(clippy::no_effect_underscore_binding)]
#![allow(clippy::ptr_arg)]

#[cfg(test)]
mod tests {
    fn test_ok1(thing: &mut String) {
        let _a: &mut String = thing;
        let _b = thing;
    }

    // Run with `cargo test --features compile_failure`
    #[cfg(feature = "compile_failure")]
    fn test_failed1(thing: &mut String) {
        let a: &mut String = thing;
        let b = thing;
        a.clear();
        b.clear();
    }

    fn test_ok2(thing: &mut String) {
        let _a: &mut String = thing;
        let _b: &mut String = thing;
    }

    #[cfg(feature = "compile_failure")]
    fn test_failed2(thing: &mut String) {
        let _a = thing;
        let _b = thing;
    }
}
