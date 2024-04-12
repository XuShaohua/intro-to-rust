use std::sync::atomic::{AtomicUsize, Ordering};
use std::thread;
use std::time::Duration;

static GLOBAL_THREAD_COUNTER: AtomicUsize = AtomicUsize::new(0);

fn global_counter() {
    let old_counter = GLOBAL_THREAD_COUNTER.fetch_add(1, Ordering::SeqCst);
    println!("old counter: {}", old_counter);

    for i in 0..100 {
        let _t = thread::spawn(move || {
            let counter = GLOBAL_THREAD_COUNTER.fetch_add(1, Ordering::SeqCst);
            println!("thread {}, counter: {}", i, counter);
        });
    }

    thread::sleep(Duration::from_secs(1));
    let end_counter = GLOBAL_THREAD_COUNTER.load(Ordering::SeqCst);
    println!("END, counter: {}", end_counter);
}

fn main() {
    global_counter();
}
