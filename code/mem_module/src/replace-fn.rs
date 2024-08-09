//! From `core/src/mem/mod.rs`

use std::ptr;

#[inline]
pub const fn replace<T>(dest: &mut T, src: T) -> T {
    // It may be tempting to use `swap` to avoid `unsafe` here. Don't!
    // The compiler optimizes the implementation below to two `memcpy`s
    // while `swap` would require at least three. See PR#83022 for details.

    // SAFETY: We read from `dest` but directly write `src` into it afterwards,
    // such that the old value is not duplicated. Nothing is dropped and
    // nothing here can panic.
    unsafe {
        let result = ptr::read(dest);
        ptr::write(dest, src);
        result
    }
}