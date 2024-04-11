use std::fmt::Debug;
use std::mem::transmute;

// From: https://zhuanlan.zhihu.com/p/407265957
fn main() {
    let s1 = String::from("hello");
    let s2: &str = "goodbye";
    let w1: &dyn Debug = &s1;
    let w2: &dyn Debug = &s2;

    // 强行把 triat object 转换成两个地址 (usize, usize)
    let (addr1, vtable1) = unsafe { transmute::<_, (usize, usize)>(w1 as *const dyn Debug) };
    let (addr2, vtable2) = unsafe { transmute::<_, (usize, usize)>(w2 as *const dyn Debug) };

    println!("addr1: 0x{:x}, vtable1: 0x{:x}", addr1, vtable1);
    println!("addr2: 0x{:x}, vtable2: 0x{:x}", addr2, vtable2);
    assert_ne!(vtable1, vtable2);
}
