//! Copied from `alloc/src/slice.rs`

// HACK(japaric): With cfg(test) `impl [T]` is not available, these three
// functions are actually methods that are in `impl [T]` but not in
// `core::slice::SliceExt` - we need to supply these functions for the
// `test_permutations` test
pub(crate) mod hack {
    use core::alloc::Allocator;

    use crate::boxed::Box;
    use crate::vec::Vec;

    // We shouldn't add inline attribute to this since this is used in
    // `vec!` macro mostly and causes perf regression. See #71204 for
    // discussion and perf results.
    pub fn into_vec<T, A: Allocator>(b: Box<[T], A>) -> Vec<T, A> {
        unsafe {
            let len = b.len();
            let (b, alloc) = Box::into_raw_with_allocator(b);
            Vec::from_raw_parts_in(b as *mut T, len, len, alloc)
        }
    }

    #[cfg(not(no_global_oom_handling))]
    #[inline]
    pub fn to_vec<T: ConvertVec, A: Allocator>(s: &[T], alloc: A) -> Vec<T, A> {
        T::to_vec(s, alloc)
    }

    #[cfg(not(no_global_oom_handling))]
    pub trait ConvertVec {
        fn to_vec<A: Allocator>(s: &[Self], alloc: A) -> Vec<Self, A>
        where
            Self: Sized;
    }

    #[cfg(not(no_global_oom_handling))]
    impl<T: Clone> ConvertVec for T {
        #[inline]
        default fn to_vec<A: Allocator>(s: &[Self], alloc: A) -> Vec<Self, A> {
            struct DropGuard<'a, T, A: Allocator> {
                vec: &'a mut Vec<T, A>,
                num_init: usize,
            }
            impl<'a, T, A: Allocator> Drop for DropGuard<'a, T, A> {
                #[inline]
                fn drop(&mut self) {
                    // SAFETY:
                    // items were marked initialized in the loop below
                    unsafe {
                        self.vec.set_len(self.num_init);
                    }
                }
            }
            let mut vec = Vec::with_capacity_in(s.len(), alloc);
            let mut guard = DropGuard { vec: &mut vec, num_init: 0 };
            let slots = guard.vec.spare_capacity_mut();
            // .take(slots.len()) is necessary for LLVM to remove bounds checks
            // and has better codegen than zip.
            for (i, b) in s.iter().enumerate().take(slots.len()) {
                guard.num_init = i;
                slots[i].write(b.clone());
            }
            core::mem::forget(guard);
            // SAFETY:
            // the vec was allocated and initialized above to at least this length.
            unsafe {
                vec.set_len(s.len());
            }
            vec
        }
    }

    #[cfg(not(no_global_oom_handling))]
    impl<T: Copy> ConvertVec for T {
        #[inline]
        fn to_vec<A: Allocator>(s: &[Self], alloc: A) -> Vec<Self, A> {
            let mut v = Vec::with_capacity_in(s.len(), alloc);
            // SAFETY:
            // allocated above with the capacity of `s`, and initialize to `s.len()` in
            // ptr::copy_to_non_overlapping below.
            unsafe {
                s.as_ptr().copy_to_nonoverlapping(v.as_mut_ptr(), s.len());
                v.set_len(s.len());
            }
            v
        }
    }
}