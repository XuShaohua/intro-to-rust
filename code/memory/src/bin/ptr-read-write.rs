// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut s = String::from("foo");

    unsafe {
        let mut s2: String = std::ptr::read(&s);
        assert_eq!(s2, "foo");

        s2 = String::default();
        assert_eq!(s2, "");

        std::ptr::write(&mut s, String::from("bar"));
    }

    assert_eq!(s, "bar");
}
