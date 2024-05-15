// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

fn main() {
    let mut distro_list: [String; 3] = [
        "Debian".to_owned(),
        "Ubuntu".to_owned(),
        "Fedora".to_owned(),
    ];

    let distro_ref: [&mut String; 3] = distro_list.each_mut();
    for entry in distro_ref {
        entry.push_str(" Linux");
    }

    println!("distro list: {distro_list:?}");
}
