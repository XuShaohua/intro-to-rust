//! Redefinition of `TcpStream`

#![allow(clippy::module_name_repetitions)]
#![allow(dead_code)]

use crate::file_desc::FileDesc;

/// A TCP stream between a local and a remote socket.
///
/// After creating a `TcpStream` by either `connect`ing to a remote host or
/// `accept`ing a connection on a `TcpListener`, data can be transmitted
/// by reading and writing to it.
///
/// The connection will be closed when the value is dropped. The reading and writing
/// portions of the connection can also be shut down individually with the `shutdown`
/// method.
pub struct TcpStream {
    inner: Socket,
}

pub(crate) struct Socket(FileDesc);
