// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::sync::{mpsc, Arc, Mutex};
use std::thread;
use std::time::Duration;

fn spawn() {
    let handle = thread::spawn(|| {
        for i in 1..10 {
            println!("hi number {} from the spawned thread!", i);
            thread::sleep(Duration::from_millis(1));
        }
    });

    for i in 1..5 {
        println!("hi number {} from the main thread!", i);
        thread::sleep(Duration::from_millis(1));
    }

    handle.join().expect("Failed to join worker thread!");

    let (tx, rx) = mpsc::channel();
    thread::spawn(move || {
        for i in 1..10 {
            println!("hi number {} from the spawned thread!", i);
            thread::sleep(Duration::from_millis(1));
        }

        let val = String::from("hi");
        tx.send(val).expect("Failed to send string msg");
    });

    let received = rx.recv().expect("Failed to receive msg");
    println!("Got: {}", received);

    for i in 1..5 {
        println!("hi number {} from the main thread!", i);
        thread::sleep(Duration::from_millis(1));
    }
}

fn mutex() {
    let counter = Arc::new(Mutex::new(0));
    let mut handles = vec![];
    for _ in 0..10 {
        let counter = Arc::clone(&counter);
        let handle = thread::spawn(move || {
            let mut num = counter.lock().unwrap();
            *num += 1;
        });
        handles.push(handle);
    }

    for handle in handles {
        handle.join().unwrap();
    }

    let count = *counter.lock().unwrap();
    assert_eq!(count, 10);
}

fn move_closure() {
    let outside_string = "Outside string".to_string();
    let mut number = 42;
    {
        let thread = thread::spawn(move || {
            // String is moved here.
            println!("inner string: {}", outside_string);

            // Get a copy of number
            number += 1;
            println!("inner number: {}", number);
        });
        let ret = thread.join();
        assert!(ret.is_ok());
    }
    //println!("outside string: {}", outside_string);
    println!("outside number: {}", number);
}

#[derive(Debug)]
pub struct Person {
    pub name: String,
    pub id: i32,
    pub data: Option<i32>,
    //pub data: Option<Rc<i32>>,
}

fn arc_demo() {
    let mutex_num = Arc::new(Mutex::new(1));
    let one_millisecond = Duration::from_millis(1);
    let one_second = Duration::from_millis(50);
    const THREADS: i32 = 1000;
    let mutex_num2 = Arc::clone(&mutex_num);
    thread::spawn(move || {
        for _ in 0..THREADS {
            let num_clone = Arc::clone(&mutex_num2);
            thread::spawn(move || {
                thread::sleep(one_millisecond);
                let mut num = num_clone.lock().unwrap();
                *num += 1;
            });
        }
    });

    loop {
        thread::sleep(one_second);
        let num = mutex_num.lock().unwrap();
        if *num < THREADS {
            println!("Not yet, number is {}", *num);
        } else {
            println!("Got there! Number is {}", *num);
            break;
        }
    }
}

fn main() {
    spawn();
    mutex();
    move_closure();
    arc_demo();
}
