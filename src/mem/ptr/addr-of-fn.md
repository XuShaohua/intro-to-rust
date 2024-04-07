# ptr::addr_of!() 与 ptr::addr_of_mut!() 宏

这两个宏用于取得变量的内存地址, 它们分别返回的是 `*const T` 和 `*mut T`.
它们不需要先经过创建引用这一步, 因为有些情况, 当结构体内存未对齐时, 是不能创建引用的.

```rust
use std::ptr;

#[derive(Debug, Default)]
struct Point {
    x: i32,
    y: i32,
}

fn main() {
    let mut point = Point::default();
    let x_ptr: *const i32 = ptr::addr_of!(point.x);
    unsafe {
        assert_eq!(ptr::read(x_ptr), 0);
    }
    let y_ptr: *mut i32 = ptr::addr_of_mut!(point.y);
    unsafe {
        ptr::write(y_ptr, 42);
    }
    assert_eq!(point.y, 42);
}
```