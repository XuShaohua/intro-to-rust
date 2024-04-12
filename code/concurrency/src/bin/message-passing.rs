// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be
// found in the LICENSE file.

use std::sync::mpsc::{channel, sync_channel};
use std::thread;

fn simple_send() {
    println!("simple send()");
    let (tx, rx) = channel();
    let handle = thread::spawn(move || {
        while let Ok(num) = rx.recv() {
            println!("[child] {num}");
        }
    });
    for i in 0..10 {
        println!("[parent] {i}");
        tx.send(i).unwrap();
    }
    drop(tx);
    handle.join().unwrap();
    println!("simple_send() end");
}

fn complex_send() {
    println!("complex_send()");
    let (tx, rx) = channel();
    let mut children = vec![];
    for i in 0..10 {
        let tx = tx.clone();
        let child = thread::spawn(move || {
            println!("[child] {i}");
            tx.send(i).unwrap();
        });
        children.push(child);
    }
    drop(tx);
    while let Ok(num) = rx.recv() {
        println!("[parent] {num}");
    }
    for child in children {
        child.join().unwrap();
    }
    println!("complex_send() end");
}

fn sync_send() {
    println!("sync_send()");
    let (tx, rx) = sync_channel(3);
    let mut children = vec![];
    for i in 0..10 {
        let tx = tx.clone();
        let child = thread::spawn(move || {
            println!("[child] {i}");
            tx.send(i).unwrap();
        });
        children.push(child);
    }
    drop(tx);
    while let Ok(num) = rx.recv() {
        println!("[parent] {num}");
    }
    for child in children {
        child.join().unwrap();
    }
    println!("sync_send() end");
}

fn main() {
    simple_send();
    complex_send();
    sync_send();
}
