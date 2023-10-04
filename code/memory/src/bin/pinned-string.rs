// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;
use std::pin::Pin;

fn main() {
    let mut string = "this".to_string();
    let mut pinned_string = Pin::new(&mut string);
    let _ = mem::replace(&mut *pinned_string, "other".to_string());
    assert_eq!(*pinned_string, "other");
    assert_eq!(string, "other");
}
