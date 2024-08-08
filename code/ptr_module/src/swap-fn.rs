//! From `core/src/ptr/mod.rs`

#[inline]
pub const unsafe fn swap<T>(x: *mut T, y: *mut T) {
    // Give ourselves some scratch space to work with.
    // We do not have to worry about drops: `MaybeUninit` does nothing when dropped.
    let mut tmp = MaybeUninit::<T>::uninit();

    // Perform the swap
    // SAFETY: the caller must guarantee that `x` and `y` are
    // valid for writes and properly aligned. `tmp` cannot be
    // overlapping either `x` or `y` because `tmp` was just allocated
    // on the stack as a separate allocated object.
    unsafe {
        copy_nonoverlapping(x, tmp.as_mut_ptr(), 1);
        copy(y, x, 1); // `x` and `y` may overlap
        copy_nonoverlapping(tmp.as_ptr(), y, 1);
    }
}