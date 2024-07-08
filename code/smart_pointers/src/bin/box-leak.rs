// Copyright (c) $YEAR Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

fn main() {
    let msg = Box::new(String::from("Hello,"));
    let msg_ref: &'static mut String = Box::leak(msg);
    assert_eq!(msg_ref, "Hello,");
    msg_ref.push_str(" world");
    println!("msg: {msg_ref}");

    unsafe {
        let _ = Box::from_raw(msg_ref);
    }
}
