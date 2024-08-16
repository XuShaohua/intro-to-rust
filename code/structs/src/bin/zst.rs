use std::ptr;

struct Ferris;

fn main() {
    let c = [Ferris, Ferris {}];
    let p1 = &c[0] as *const Ferris;
    let p2 = &c[1] as *const Ferris;
    println!("{}", p1 == p2);
    println!("sizeof c: {}", size_of_val(&c));
    println!("p1: {:?}, p2: {:?}, c: {:?}", p1, p2, ptr::addr_of!(c));
    println!("sizeof Ferris: {}", size_of::<Ferris>());
}
