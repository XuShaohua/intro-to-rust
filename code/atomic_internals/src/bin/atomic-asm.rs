use std::sync::atomic::{AtomicI32, Ordering};

#[inline(never)]
pub fn add_ten(num: &mut i32) {
    *num += 10;
}

#[inline(never)]
pub fn reset_zero(num: &mut i32) {
    *num = 0;
}

#[inline(never)]
pub fn reset_zero_with_atomic(num: &AtomicI32) {
    num.store(0, Ordering::Relaxed);
}

#[inline(never)]
pub fn add_ten_with_atomic(num: &AtomicI32) {
    num.fetch_add(10, Ordering::Relaxed);
}

#[inline(never)]
pub fn add_ten_and_return_with_atomic(num: &AtomicI32) -> i32 {
    num.fetch_add(10, Ordering::Relaxed)
}

#[inline(never)]
pub fn or_ten_and_return_with_atomic2(num: &AtomicI32) -> i32 {
    num.fetch_or(10, Ordering::Relaxed)
}

#[inline(never)]
pub fn or_ten_with_atomic_by_hand(num: &AtomicI32) -> i32 {
    let mut current = num.load(Ordering::Relaxed);
    loop {
        let new = current | 10;
        match num.compare_exchange(current, new, Ordering::Relaxed, Ordering::Relaxed) {
            Ok(v) => return v,
            Err(v) => current = v,
        }
    }
}

#[inline(never)]
pub fn compare_exchange(num: &AtomicI32) {
    num.compare_exchange(5, 6, Ordering::Relaxed, Ordering::Relaxed);
}

#[inline(never)]
pub fn compare_exchange_weak(num: &AtomicI32) {
    num.compare_exchange_weak(5, 6, Ordering::Relaxed, Ordering::Relaxed);
}

pub fn main() {
    let s = "Hello, Rust".to_owned();

    let s2 = s;
    assert_eq!(s2.len(), 12);
}
