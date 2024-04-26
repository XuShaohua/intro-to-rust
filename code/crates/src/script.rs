#!/usr/bin/env -S bash -c 'cat $0 | tail -n +2 | evcxr --ide-mode'

println!("Hello, from rust script!");

for i in 0..10 {
    println!("{i}");
}
