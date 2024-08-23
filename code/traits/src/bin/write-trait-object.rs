// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::ffi::c_void;
use std::io::Write;
use std::{io, mem, ptr};

type WriteFn = fn(vector: usize, buf: &[u8]) -> io::Result<usize>;

fn main() {
    let mut buf: Vec<u8> = vec![1, 2, 3];
    let write_trait_object: &mut dyn Write = &mut buf;
    let (data_ptr, vtable) = unsafe {
        mem::transmute::<&mut dyn Write, (*const u8, *const c_void)>
            (write_trait_object)
    };
    assert_eq!(ptr::addr_of!(buf).cast(), data_ptr);
    println!("vtable: 0x{:0x}", vtable as usize);

    let vtable_slice: &[usize; 10] = unsafe { &*(vtable as *const [usize; 10]) };
    for item in vtable_slice {
        println!("item: 0x{item:X}");
    }

    let write_fn: WriteFn = unsafe { mem::transmute(vtable_slice[3]) };
    let msg = b"hello, world";
    let ret = write_fn(data_ptr as usize, msg);
    assert!(ret.is_ok());
    assert_eq!(ret.unwrap(), msg.len());
    println!("buf: {buf:?}");
}