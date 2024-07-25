// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

//! This memory management is based on musl libc.

pub use debug_allocator::DebugAllocator;
pub use mmap_allocator::MMapAllocator;

mod debug_allocator;
mod mmap_allocator;

//mod free;
//mod malloc;
//mod realloc;
