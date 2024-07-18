//! Re-definition of Box

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

impl Box {
    #[inline]
    pub fn leak<'a>(b: Self) -> &'a mut T
    where
        A: 'a,
    {
        unsafe { &mut *Box::into_raw(b) }
    }

    #[inline]
    pub fn into_raw(b: Self) -> *mut T {
        // Make sure Miri realizes that we transition from a noalias pointer to a raw pointer here.
        unsafe { addr_of_mut!(*&mut *Self::into_raw_with_allocator(b).0) }
    }

    pub fn into_raw_with_allocator(b: Self) -> (*mut T, A) {
        let mut b = mem::ManuallyDrop::new(b);
        // We carefully get the raw pointer out in a way that Miri's aliasing model understands what
        // is happening: using the primitive "deref" of `Box`. In case `A` is *not* `Global`, we
        // want *no* aliasing requirements here!
        // In case `A` *is* `Global`, this does not quite have the right behavior; `into_raw`
        // works around that.
        let ptr = addr_of_mut!(**b);
        let alloc = unsafe { ptr::read(&b.1) };
        (ptr, alloc)
    }
}