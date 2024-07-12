//! Refinition of Box

use core::ptr::{self, NonNull, Unique};

/// A pointer type that uniquely owns a heap allocation of type `T`.
pub struct Box<
    T: ?Sized,
    #[unstable(feature = "allocator_api", issue = "32838")] A: Allocator = Global,
>(Unique<T>, A);

impl<T> Box<T> {
    /// Allocates memory on the heap and then places `x` into it.
    ///
    /// This doesn't actually allocate if `T` is zero-sized.
    #[inline(always)]
    #[must_use]
    pub fn new(x: T) -> Self {
        #[rustc_box]
        Box::new(x)
    }
}

unsafe impl<#[may_dangle] T: ?Sized, A: Allocator> Drop for Box<T, A> {
    #[inline]
    fn drop(&mut self) {
        // the T in the Box is dropped by the compiler before the destructor is run

        let ptr = self.0;

        unsafe {
            let layout = Layout::for_value_raw(ptr.as_ptr());
            if layout.size() != 0 {
                self.1.deallocate(From::from(ptr.cast()), layout);
            }
        }
    }
}
