# ptr::swap() 与 ptr::replace() 函数

这两个函数的定义如下:

```rust, not_run
pub unsafe fn swap<T>(x: *mut T, y: *mut T);
pub unsafe fn replace<T>(dst: *mut T, src: T) -> T;
```

- swap() 用于交换两个指针
- replace() 用于交dest 指向 src 对象的地址, 并返回原先的值

使用这两个函数, 要满足必要条件:

- src/dst 要是有效的地址, 可读可写
- src/dst 要被初始化
- src/dst 要内存对齐

看一下示例代码:

```rust
use std::ptr;

fn main() {
    let mut msg = ['b', 'u', 's', 't'];
    let c = unsafe { ptr::replace(&mut msg[0], 'r') };
    assert_eq!(msg[0], 'r');
    assert_eq!(c, 'b');

    let mut msg2 = ['b', 'u', 's', 't'];
    let mut c2 = 'r';
    unsafe {
        ptr::swap(&mut msg2[0], &mut c2);
    }
    assert_eq!(msg2[0], 'r');
    assert_eq!(c2, 'b');
}
```