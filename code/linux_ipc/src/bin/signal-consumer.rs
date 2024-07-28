// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.


use std::mem::size_of;
use std::thread;
use std::time::Duration;

use linux_ipc::Error;
use linux_ipc::signal_keycode::SIGNAL_KEYCODE;

fn signal_handler(sig_num: i32) {
    println!("sig_num: {sig_num}");

    // unsafe {
    //     #[allow(static_mut_refs)]
    //     if let Some(sender) = &mut SENDER {
    //         if let Ok(index) = SIGNAL_KEYCODE.binary_search_by_key(&sig_num, |pair| pair.0) {
    //             let keycode = SIGNAL_KEYCODE[index].1;
    //             let msg = parse_keycode(keycode);
    //             if let Err(err) = sender.send(msg) {
    //                 eprintln!("Failed to send msg to main thread, err: {err:?}");
    //             }
    //             // TODO(Shaohua): Quit thread
    //         } else {
    //             // Ignore this signal.
    //         }
    //     }
    // }
}

fn main() -> Result<(), Error> {
    // let (sender, receiver) = mpsc::channel();

    let sa = nc::sigaction_t {
        sa_handler: signal_handler as nc::sighandler_t,
        sa_flags: nc::SA_RESTART,
        ..Default::default()
    };
    let mut old_sa = nc::sigaction_t::default();
    for (sig_num, _keycode) in SIGNAL_KEYCODE {
        let ret = unsafe { nc::rt_sigaction(sig_num, &sa, &mut old_sa, size_of::<nc::sigset_t>()) };
        assert!(ret.is_ok());
        println!("register signal handler for {sig_num}");
    }

    // let _handler = thread::spawn(move || {
    let tid = unsafe { nc::gettid() };
    println!("consumer pid is: {:?}", tid);
    loop {
        // unsafe {
        // let mask = nc::sigset_t::default();
        // let _ret = nc::rt_sigsuspend(&mask, size_of::<nc::sigset_t>());
        // }
        thread::sleep(Duration::from_secs(3600));
        // read and reset signal number from global variable.
        // then send msg to ui thread.
    }
    // });?
    //
    // let tid = unsafe { nc::gettid() };
    // println!("consumer ui pid is: {:?}", tid);
    // run_sim(receiver)
}
