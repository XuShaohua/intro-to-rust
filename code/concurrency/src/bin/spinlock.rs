use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Arc;
use std::{hint, thread};

fn spinlock() {
    let spinlock = Arc::new(AtomicUsize::new(1));

    let spinlock_copy = spinlock.clone();
    let thread = thread::spawn(move || {
        spinlock_copy.store(0, Ordering::SeqCst);
    });

    while spinlock.load(Ordering::SeqCst) != 0 {
        hint::spin_loop();
    }
    println!("spinload value is 0");

    if let Err(err) = thread.join() {
        eprintln!("Thread has an error: {:?}", err);
    }
}

fn main() {
    spinlock();
}
