//! From `core/src/cell.rs`

impl RefCell {
    #[inline]
    #[cfg_attr(feature = "debug_refcell", track_caller)]
    pub fn try_borrow(&self) -> Result<Ref<'_, T>, BorrowError> {
        match BorrowRef::new(&self.borrow) {
            Some(b) => {
                #[cfg(feature = "debug_refcell")]
                {
                    // `borrowed_at` is always the *first* active borrow
                    if b.borrow.get() == 1 {
                        self.borrowed_at.set(Some(crate::panic::Location::caller()));
                    }
                }

                // SAFETY: `BorrowRef` ensures that there is only immutable access
                // to the value while borrowed.
                let value = unsafe { NonNull::new_unchecked(self.value.get()) };
                Ok(Ref { value, borrow: b })
            }
            None => Err(BorrowError {
                // If a borrow occurred, then we must already have an outstanding borrow,
                // so `borrowed_at` will be `Some`
                #[cfg(feature = "debug_refcell")]
                location: self.borrowed_at.get().unwrap(),
            }),
        }
    }

    #[stable(feature = "try_borrow", since = "1.13.0")]
    #[inline]
    #[cfg_attr(feature = "debug_refcell", track_caller)]
    pub fn try_borrow_mut(&self) -> Result<RefMut<'_, T>, BorrowMutError> {
        match BorrowRefMut::new(&self.borrow) {
            Some(b) => {
                #[cfg(feature = "debug_refcell")]
                {
                    self.borrowed_at.set(Some(crate::panic::Location::caller()));
                }

                // SAFETY: `BorrowRefMut` guarantees unique access.
                let value = unsafe { NonNull::new_unchecked(self.value.get()) };
                Ok(RefMut { value, borrow: b, marker: PhantomData })
            }
            None => Err(BorrowMutError {
                // If a borrow occurred, then we must already have an outstanding borrow,
                // so `borrowed_at` will be `Some`
                #[cfg(feature = "debug_refcell")]
                location: self.borrowed_at.get().unwrap(),
            }),
        }
    }
}