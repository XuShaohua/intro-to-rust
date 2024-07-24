fn main() {
    let mut buf = [0; 8];
    let buf_ptr: *const () = buf.as_mut_ptr() as *const ();
}
