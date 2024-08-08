//! From `core/src/ptr/mod.rs`

#[inline]
pub const unsafe fn replace<T>(dst: *mut T, src: T) -> T {
    unsafe {
        ub_checks::assert_unsafe_precondition!(
            check_language_ub,
            "ptr::replace requires that the pointer argument is aligned and non-null",
            (
                addr: *const () = dst as *const (),
                align: usize = align_of::<T>(),
            ) => ub_checks::is_aligned_and_not_null(addr, align)
        );
        mem::replace(&mut *dst, src)
    }
}