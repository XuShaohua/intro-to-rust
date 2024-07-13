//! Re-impl of `Vec::new()`

impl<T> Vec<T> {
    #[inline]
    #[must_use]
    pub const fn new() -> Self {
        Vec { buf: RawVec::NEW, len: 0 }
    }
}

impl<T> RawVec<T> {
    /// HACK(Centril): This exists because stable `const fn` can only call stable `const fn`, so
    /// they cannot call `Self::new()`.
    ///
    /// If you change `RawVec<T>::new` or dependencies, please take care to not introduce anything
    /// that would truly const-call something unstable.
    pub const NEW: Self = Self::new();

    /// Creates the biggest possible `RawVec` (on the system heap)
    /// without allocating. If `T` has positive size, then this makes a
    /// `RawVec` with capacity `0`. If `T` is zero-sized, then it makes a
    /// `RawVec` with capacity `usize::MAX`. Useful for implementing
    /// delayed allocation.
    #[must_use]
    pub const fn new() -> Self {
        Self::new_in()
    }

    /// Like `new`, but parameterized over the choice of allocator for
    /// the returned `RawVec`.
    pub const fn new_in() -> Self {
        // `cap: 0` means "unallocated". zero-sized types are ignored.
        Self { ptr: Unique::dangling(), cap: Cap::ZERO }
    }
}