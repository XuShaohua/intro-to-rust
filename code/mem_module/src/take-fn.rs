//! From `core/src/mem/mod.rs`

#[inline]
pub fn take<T: Default>(dest: &mut T) -> T {
    replace(dest, T::default())
}