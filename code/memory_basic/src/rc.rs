//! Refinition of Rc
//!
//! Single-threaded reference-counting pointers. 'Rc' stands for 'Reference
//! Counted'.
//! The type [`Rc<T>`][`Rc`] provides shared ownership of a value of type `T`,
//! allocated in the heap. Invoking [`clone`][clone] on [`Rc`] produces a new
//! pointer to the same allocation in the heap. When the last [`Rc`] pointer to a
//! given allocation is destroyed, the value stored in that allocation (often
//! referred to as "inner value") is also dropped.

use std::cell::Cell;

/// A single-threaded reference-counting pointer. 'Rc' stands for 'Reference
/// Counted'.
pub struct Rc<
    T: ?Sized,
    #[unstable(feature = "allocator_api", issue = "32838")] A: Allocator = Global,
> {
    ptr: NonNull<RcBox<T>>,
    phantom: PhantomData<RcBox<T>>,
    alloc: A,
}

// This is repr(C) to future-proof against possible field-reordering, which
// would interfere with otherwise safe [into|from]_raw() of transmutable
// inner types.
#[repr(C)]
struct RcBox<T: ?Sized> {
    strong: Cell<usize>,
    weak: Cell<usize>,
    value: T,
}

impl<T: ?Sized, A: Allocator> !Send for Rc<T, A> {}
impl<T: ?Sized, A: Allocator> !Sync for Rc<T, A> {}

impl<T> Rc<T> {
    /// Constructs a new `Rc<T>`.
    pub fn new(value: T) -> Rc<T> {
        // There is an implicit weak pointer owned by all the strong
        // pointers, which ensures that the weak destructor never frees
        // the allocation while the strong destructor is running, even
        // if the weak pointer is stored inside the strong one.
        unsafe {
            Self::from_inner(
                Box::leak(Box::new(RcBox {
                    strong: Cell::new(1),
                    weak: Cell::new(1),
                    value,
                }))
                .into(),
            )
        }
    }
}

unsafe impl<#[may_dangle] T: ?Sized, A: Allocator> Drop for Rc<T, A> {
    /// Drops the `Rc`.
    ///
    /// This will decrement the strong reference count. If the strong reference
    /// count reaches zero then the only other references (if any) are
    /// [`Weak`], so we `drop` the inner value.
    fn drop(&mut self) {
        unsafe {
            self.inner().dec_strong();
            if self.inner().strong() == 0 {
                // destroy the contained object
                ptr::drop_in_place(Self::get_mut_unchecked(self));

                // remove the implicit "strong weak" pointer now that we've
                // destroyed the contents.
                self.inner().dec_weak();

                if self.inner().weak() == 0 {
                    self.alloc
                        .deallocate(self.ptr.cast(), Layout::for_value(self.ptr.as_ref()));
                }
            }
        }
    }
}
