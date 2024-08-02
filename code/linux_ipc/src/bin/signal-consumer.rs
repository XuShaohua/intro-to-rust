// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

use std::sync::atomic::{AtomicI32, Ordering};
use std::sync::mpsc;
use std::thread;

use linux_ipc::crab_sim::run_sim;
use linux_ipc::keycode::parse_keycode;
use linux_ipc::msg::KeyboardMsg;
use linux_ipc::signal_keycode::SIGNAL_KEYCODE;

static SIG_NUM: AtomicI32 = AtomicI32::new(0);

#[must_use]
fn get_sa_restorer() -> Option<nc::restorefn_t> {
    let mut old_sa = nc::sigaction_t::default();
    let ret = unsafe { nc::rt_sigaction(nc::SIGSEGV, None, Some(&mut old_sa)) };
    if ret.is_ok() {
        old_sa.sa_restorer
    } else {
        None
    }
}

fn signal_handler(sig_num: i32) {
    SIG_NUM.store(sig_num, Ordering::Relaxed);
}

fn main() {
    let (sender, receiver) = mpsc::channel();

    let sa = nc::sigaction_t {
        sa_handler: signal_handler as nc::sighandler_t,
        sa_flags: nc::SA_RESTART | nc::SA_RESTORER,
        sa_restorer: get_sa_restorer(),
        ..Default::default()
    };
    for (sig_num, _keycode) in SIGNAL_KEYCODE {
        let ret = unsafe { nc::rt_sigaction(sig_num, Some(&sa), None) };
        assert!(ret.is_ok());
        println!("register signal handler for {sig_num}");
    }

    let handle = thread::spawn(move || {
        let tid = unsafe { nc::gettid() };
        println!("consumer pid is: {:?}", tid);
        let mut is_running = true;
        while is_running {
            let mask = nc::sigset_t::default();
            let ret = unsafe { nc::rt_sigsuspend(&mask) };
            assert_eq!(ret, Err(nc::EINTR));

            let sig_num = SIG_NUM.fetch_and(0, Ordering::Relaxed);
            if sig_num == 0 {
                continue;
            }
            if let Ok(index) = SIGNAL_KEYCODE.binary_search_by_key(&sig_num, |pair| pair.0) {
                let keycode = SIGNAL_KEYCODE[index].1;
                let msg = parse_keycode(keycode);
                is_running = msg != KeyboardMsg::Quit;
                if let Err(err) = sender.send(msg) {
                    eprintln!("Failed to send msg to main thread, err: {err:?}");
                }
            }
        }
    });

    let _ret = run_sim(receiver);
    let _ = handle.join();
}
