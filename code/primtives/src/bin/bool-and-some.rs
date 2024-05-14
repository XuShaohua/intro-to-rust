// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[allow(clippy::eq_op)]
fn main() {
    let _is_checked = false;
    let _is_hover = true;
    assert_eq!(false.then_some(0), None);
    assert_eq!((1 + 1 == 2).then_some(2), Some(2));
}
