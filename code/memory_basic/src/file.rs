//! Redefination of `File` struct

#![allow(dead_code)]

use crate::file_desc::FileDesc;

/// An object providing access to an open file on the filesystem.
///
/// An instance of a `File` can be read and/or written depending on what options
/// it was opened with. Files also implement [`Seek`] to alter the logical cursor
/// that the file contains internally.
///
/// Files are automatically closed when they go out of scope.  Errors detected
/// on closing are ignored by the implementation of `Drop`.  Use the method
/// [`sync_all`] if these errors must be manually handled.
pub struct File(FileDesc);
