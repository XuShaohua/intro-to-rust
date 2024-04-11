# mem::replace() 函数

传入一个同类型的值, 进行交换.

这个函数的内部实现也较简单, 直接看源代码:

```rust
pub const fn replace<T>(dest: &mut T, src: T) -> T {
    unsafe {
        let result = ptr::read(dest);
        ptr::write(dest, src);
        result
    }
}
```

使用方法也简单, 看一个基本的例子:

```rust
use std::mem;

fn main() {
    let mut v = [Box::new(2), Box::new(3), Box::new(4)];

    let ret = mem::replace(&mut v[1], Box::new(42));
    assert_eq!(*ret, 3);
    assert_eq!(*v[1], 42);
}
```

下面这个例子也有趣一些:

```rust
use std::mem;

fn main() {
    let mut v1 = vec![1, 2, 3];
    let mut v2 = vec![4, 5];
    // 使用语法糖
    (v1, v2) = (v2, v1);
    // 使用 replace()
    v2 = mem::replace(&mut v1, v2);
    assert_eq!(v2, vec![4, 5]);
}
```