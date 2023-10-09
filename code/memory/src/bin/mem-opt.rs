// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by General Public License that can be found
// in the LICENSE file.

#![allow(dead_code)]

use std::mem::{self, size_of};

#[repr(C)]
union ExampleUnion {
    smaller: u8,
    larger: u16,
}

#[repr(C)]
struct TupleStruct(u8, u16, u8);

struct TupleStruct2(u8, u16);

#[repr(C)]
struct FieldStructOptimized {
    first: u8,
    third: u8,
    second: u16,
}

struct LargerStruct {
    first: u8,   // 1
    second: u16, // 2
    third: u32,  // 4
    forth: u64,  // 8
    fifth: u128, // 16
}

#[repr(C)]
struct LargerStructC {
    first: u8,   // 1
    second: u16, // 2
    third: u32,  // 4
    forth: u64,  // 8
    fifth: u128, // 16
    first2: u8,  // 1
}

struct LargerReverseStruct {
    fifth: u128, // 16
    forth: u64,  // 8
    third: u32,  // 4
    second: u16, // 2
    first: u8,   // 1
}

#[inline]
pub fn replace<T>(dest: &mut T, mut src: T) -> T {
    mem::swap(dest, &mut src);
    src
}

#[repr(packed)]
#[derive(Debug)]
struct FooStruct {
    x: u8,
}

fn main() {
    println!("size of example union: {}", size_of::<ExampleUnion>());
    println!("size of tuple struct: {}", size_of::<TupleStruct>());
    println!("size of tuple struct2: {}", size_of::<TupleStruct2>());

    println!(
        "size of optimized struct: {}",
        size_of::<FieldStructOptimized>()
    );

    println!("size of larger struct: {}", size_of::<LargerStruct>());
    println!("size of larger structC: {}", size_of::<LargerStructC>());
    println!(
        "size of larger structC: {}",
        size_of::<LargerReverseStruct>()
    );

    println!("size of pointer: {}", size_of::<*const i32>());
    println!("size of ref: {}", size_of::<&i32>());

    let mut x = 5;
    let mut y = 42;
    mem::swap(&mut x, &mut y);
    println!("x = {}", x);

    {
        let mut v = vec![1, 2];
        let old_v = mem::take(&mut v);
        println!("old_v: {:?}", old_v);
    }

    {
        let mut v = vec![1, 2];
        let old_v = mem::replace(&mut v, vec![2, 3]);
        println!("old_v: {:?}", old_v);
        println!("v: {:?}", v);
    }

    println!(
        "some {:?}, none: {:?}",
        mem::discriminant(&Some(1)),
        mem::discriminant(&None::<i32>)
    );

    {
        let foo_slice = [42u8];
        unsafe {
            let foo_struct: FooStruct = mem::transmute_copy(&foo_slice);
            println!("foo struct: {:?}", foo_struct);
            println!("foo slice: {:?}", foo_slice);
        }
    }
}
