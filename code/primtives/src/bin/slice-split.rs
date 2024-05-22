// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let line = b"root:x:0:0:root:/root:/bin/bash";
    let mut iter = line.split(|byte| *byte == b':');
    // user name
    assert_eq!(iter.next(), Some(b"root".as_slice()));
    // password placeholder
    assert_eq!(iter.next(), Some(b"x".as_slice()));
    // uid
    assert_eq!(iter.next(), Some(b"0".as_slice()));
    // gid
    assert_eq!(iter.next(), Some(b"0".as_slice()));
    // default group
    assert_eq!(iter.next(), Some(b"root".as_slice()));
    // home directory
    assert_eq!(iter.next(), Some(b"/root".as_slice()));
    // default shell
    assert_eq!(iter.next(), Some(b"/bin/bash".as_slice()));
    assert_eq!(iter.next(), None);
}