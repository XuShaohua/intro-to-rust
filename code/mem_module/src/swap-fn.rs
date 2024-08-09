//! From `core/src/mem/mod.rs`

#[inline]
pub const fn swap<T>(x: &mut T, y: &mut T) {
    // SAFETY: `&mut` guarantees these are typed readable and writable
    // as well as non-overlapping.
    unsafe { intrinsics::typed_swap(x, y) }
}

mod intrinsics {
    #[inline]
    #[rustc_intrinsic]
    pub const unsafe fn typed_swap<T>(x: *mut T, y: *mut T) {
        // SAFETY: The caller provided single non-overlapping items behind
        // pointers, so swapping them with `count: 1` is fine.
        unsafe { ptr::swap_nonoverlapping(x, y, 1) };
    }
}