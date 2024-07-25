// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use crate::keyboard_reader::KeyCode;
use crate::keycode;

// (sig_num, keycode) pair, sorted ascending in order.
pub const SIGNAL_KEYCODE: [(i32, KeyCode); 14] = [
    (nc::SIGHUP, keycode::KEYCODE_UP),
    (nc::SIGINT, keycode::KEYCODE_DOWN),
    (nc::SIGQUIT, keycode::KEYCODE_RIGHT),
    (nc::SIGILL, keycode::KEYCODE_LEFT),
    (nc::SIGABRT, keycode::KEYCODE_B),
    (nc::SIGBUS, keycode::KEYCODE_C),
    (nc::SIGFPE, keycode::KEYCODE_D),
    (nc::SIGUSR1, keycode::KEYCODE_E),
    (nc::SIGUSR2, keycode::KEYCODE_F),
    (nc::SIGPIPE, keycode::KEYCODE_G),
    (nc::SIGALRM, keycode::KEYCODE_Q),
    (nc::SIGTERM, keycode::KEYCODE_R),
    (nc::SIGCHLD, keycode::KEYCODE_T),
    (nc::SIGPOLL, keycode::KEYCODE_V),
];