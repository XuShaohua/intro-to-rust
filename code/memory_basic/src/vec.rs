//! Part of `vec/mod.rs`

use std::ptr;

impl<T> Vec<T> {
    #[inline]
    pub fn push(&mut self, value: T) {
        // Inform codegen that the length does not change across grow_one().
        let len = self.len;
        // This will panic or abort if we would allocate > isize::MAX bytes
        // or if the length increment would overflow for zero-sized types.
        if len == self.buf.capacity() {
            self.buf.grow_one();
        }
        unsafe {
            let end = self.as_mut_ptr().add(len);
            ptr::write(end, value);
            self.len = len + 1;
        }
    }

    #[inline]
    pub fn pop(&mut self) -> Option<T> {
        if self.len == 0 {
            None
        } else {
            unsafe {
                self.len -= 1;
                core::hint::assert_unchecked(self.len < self.capacity());
                Some(ptr::read(self.as_ptr().add(self.len())))
            }
        }
    }
}