//! Redefination of File struct.

#![allow(clippy::module_name_repetitions)]
#![allow(dead_code)]
#![allow(non_camel_case_types)]

#[derive(Debug)]
pub struct FileDesc(OwnedFd);

/// An owned file descriptor.
///
/// This closes the file descriptor on drop. It is guaranteed that nobody else will close the file
/// descriptor.
///
/// This uses `repr(transparent)` and has the representation of a host file
/// descriptor, so it can be used in FFI in places where a file descriptor is
/// passed as a consumed argument or returned as an owned value, and it never
/// has the value `-1`.
#[derive(Debug)]
#[repr(transparent)]
pub struct OwnedFd {
    fd: RawFd,
}

impl Drop for OwnedFd {
    #[inline]
    fn drop(&mut self) {
        unsafe {
            // Note that errors are ignored when closing a file descriptor. The
            // reason for this is that if an error occurs we don't actually know if
            // the file descriptor was closed or not, and if we retried (for
            // something like EINTR), we might close another valid file descriptor
            // opened after we closed ours.
            #[cfg(not(target_os = "hermit"))]
            let _ = libc::close(self.fd);
            #[cfg(target_os = "hermit")]
            let _ = hermit_abi::close(self.fd);
        }
    }
}

/// Raw file descriptors.
pub type RawFd = c_int;

pub type c_int = i32;
