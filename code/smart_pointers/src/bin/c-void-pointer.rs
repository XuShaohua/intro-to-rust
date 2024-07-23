use std::mem;

fn main() {
    let x = 42;
    let x_ptr: *const () = &x as *const i32 as *const ();
    let x_addr: usize = x_ptr as usize;
    unsafe {
        let x_mut_ref = mem::transmute::<usize, &mut i32>(x_addr);
        *x_mut_ref = 43;
    }
    assert_eq!(x, 43);
    println!("x: {x}");
}
