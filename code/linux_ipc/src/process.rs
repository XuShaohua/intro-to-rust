// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#[allow(clippy::module_name_repetitions)]
pub fn wait_child_process(mut num_children: usize) {
    println!("wait_child_process() num: {num_children}");
    while num_children > 0 {
        let mut status = 0;
        if let Ok(pid) = unsafe { nc::wait4(-1, Some(&mut status), 0, None) } {
            println!("child pid: {pid}, status: {status}");
            num_children -= 1;
        }
    }
}
