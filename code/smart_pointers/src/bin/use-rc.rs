// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem::size_of;
use std::rc::Rc;

fn use_rc() {
    let s = Rc::new("Hello".to_owned());
    let t = s.clone();
    let u = s.clone();

    assert_eq!(s, t);
    assert_eq!(s, u);
    assert_eq!(Rc::strong_count(&s), 3);
}

fn test_weak_rc() {
    let s = Rc::new("Hello".to_owned());
    let t = Rc::clone(&s);
    let u = Rc::clone(&s);

    assert_eq!(s, t);
    assert_eq!(s, u);
    assert_eq!(Rc::strong_count(&s), 3);
}

fn main() {
    use_rc();
    test_weak_rc();

    assert_eq!(size_of::<Rc<i32>>(), 8);
}
