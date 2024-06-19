// Copyright (c) 2024 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

use std::mem;

fn main() {
    let a1: [[i32; 4]; 3] = [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11]];
    assert_eq!(mem::size_of_val(&a1), 48);
    println!("Content of array a1:");
    for i in 0..3 {
        for j in 0..4 {
            print!("{}, ", a1[i][j]);
        }
        println!();
    }

    let a2: [[[i32; 4]; 3]; 2] = [
        [[0, 1, 2, 3], [4, 5, 6, 7], [8, 9, 10, 11]],
        [[12, 13, 14, 15], [16, 17, 18, 19], [20, 21, 22, 23]],
    ];
    assert_eq!(mem::size_of_val(&a2), 96);
    println!("Content of array a2:");
    for i in 0..2 {
        for j in 0..3 {
            for k in 0..4 {
                print!("{}, ", a2[i][j][k]);
            }
            println!();
        }
        println!();
    }
}
