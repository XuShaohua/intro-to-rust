#![allow(clippy::missing_transmute_annotations)]

use std::fmt::{Debug, Display};
use std::mem::transmute;

// From: https://zhuanlan.zhihu.com/p/407265957
fn test_same_trait() {
    println!("test_same_trait()");
    let s1 = "hello".to_owned();
    let s2 = "goodbye".to_owned();
    let w1: &dyn Debug = &s1;
    let w2: &dyn Debug = &s2;

    // 强行把 trait object 转换成两个地址 (usize, usize), trait object 是一个胖指针.
    let (addr1, vtable1) = unsafe { transmute::<_, (usize, usize)>(w1 as *const dyn Debug) };
    let (addr2, vtable2) = unsafe { transmute::<_, (usize, usize)>(w2 as *const dyn Debug) };

    println!("addr1: 0x{:x}, vtable1: 0x{:x}", addr1, vtable1);
    println!("addr2: 0x{:x}, vtable2: 0x{:x}", addr2, vtable2);

    assert_eq!(vtable1, vtable2);
}

fn test_different_traits() {
    println!("test_different_traits()");
    let s1 = "hello".to_owned();
    let w1: &dyn Debug = &s1;
    let w2: &dyn Display = &s1;

    // 强行把 trait object 转换成两个地址 (usize, usize), trait object 是一个胖指针.
    let (addr1, vtable1) = unsafe { transmute::<_, (usize, usize)>(w1 as *const dyn Debug) };
    let (addr2, vtable2) = unsafe { transmute::<_, (usize, usize)>(w2 as *const dyn Display) };

    println!("addr1: 0x{:x}, vtable1: 0x{:x}", addr1, vtable1);
    println!("addr2: 0x{:x}, vtable2: 0x{:x}", addr2, vtable2);

    assert_eq!(vtable1, vtable2);
}

fn main() {
    test_same_trait();
    test_different_traits();
}
