use std::sync::atomic::{AtomicBool, Ordering};
use std::thread;

static A: AtomicBool = AtomicBool::new(false);
static B: AtomicBool = AtomicBool::new(false);

static mut S: String = String::new();

fn main() {
    let a = thread::spawn(|| {
        A.store(true, Ordering::SeqCst);
        if !B.load(Ordering::SeqCst) {
            // SAFETY: win the race
            unsafe {
                S.push('A');
            }
        }
    });
    let b = thread::spawn(|| {
        B.store(true, Ordering::SeqCst);
        if !A.load(Ordering::SeqCst) {
            // SAFETY: win the race
            unsafe {
                S.push('B');
            }
        }
    });
    a.join().unwrap();
    b.join().unwrap();

    // SAFETY: No other thread modifies S.
    println!("s: {}", unsafe { S.as_str() });
}
