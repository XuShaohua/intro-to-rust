// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    // TODO(Shaohua): Remove
    #[allow(unexpected_cfgs)]
    if cfg!(is_nightly) {
        println!("is-nightly is set");
    } else {
        println!("is-nightly not set");
    }
}
