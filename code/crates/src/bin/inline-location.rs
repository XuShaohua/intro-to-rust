// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[inline(always)]
fn on_failure(code: i32) {
    //println!("at line: {}", line!());
    panic!("on_filaure occurred with code: {code}");
}

fn main() {
    println!("main()");
    on_failure(42);
}
