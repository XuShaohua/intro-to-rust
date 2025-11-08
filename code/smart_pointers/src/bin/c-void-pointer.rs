use std::mem;

fn main() {
    let x = 42;
    let x_ptr: *const () = &x as *const i32 as *const ();
    let x_addr: usize = x_ptr as usize;
    unsafe {
        #[allow(integer_to_ptr_transmutes)]
        let x_mut_ref = mem::transmute::<usize, &mut i32>(x_addr);
        *x_mut_ref = 43;
    }
    assert_eq!(x, 43);

    // void**
    unsafe {
        let x_ref_ref = &x_addr as *const usize as *const *mut i32;
        (*(*x_ref_ref)) = 44;
    }
    assert_eq!(x, 44);

    // [u8; 4] to *const u8 to *const ()
    {
        let nums = [0, 1, 2, 3];
        let nums_ptr: *const u8 = nums.as_ptr();
        let nums_void_ptr: *const () = nums_ptr as *const ();
        let nums_addr: usize = nums_void_ptr as usize;
        assert_eq!(nums_addr, nums.as_ptr() as usize);
    }

    println!("x: {x}");
}
