
use std::sync::{Arc, Mutex};
use std::thread;
use std::sync::mpsc::channel;


struct Payload {
    count: usize,
    value: i128,
}

fn main() {
    const N: usize = 100;

    let payload = Arc::new(Mutex::new(Payload{ count: 0, value: 1 }));

    let (tx, rx) = channel();

    for _ in 0..N {
        let (payload, tx) = (payload.clone(), tx.clone());
        thread::spawn(move || {
            let mut payload = payload.lock().unwrap();
            payload.value *= 2;
            payload.count += 1;
            if payload.count == N {
                tx.send(()).unwrap();
            }
        });
    }

    rx.recv().unwrap();
    println!("data: {:?}", payload.lock().unwrap().value);
}
