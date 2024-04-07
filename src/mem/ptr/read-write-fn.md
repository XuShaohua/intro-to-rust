# ptr::read() 与 ptr::write() 函数

这两个函数用于从原始指针读取当前值以及向其写入新的值.

```rust, not_run
pub const unsafe fn read<T>(src: *const T) -> T;
pub unsafe fn write<T>(dst: *mut T, src: T);
```

要使用它们, 需要先满足前置条件, 不然对指针的操作就会出现未定义行为:

- 原始指针必须是有效指针
- 原始指针应该是内存对齐的, 如果没有对齐, 可以考虑 `read_unaligned()` 和 `write_unaligned()` 函数
- 对于 `read(src)`, 原始指针必须指向一个被初始化了的地址

```rust
use std::ptr;

fn main() {
    let mut s = 42;

    unsafe {
        let s2 = &mut s as *mut i32;
        let num = ptr::read(s2);
        assert_eq!(num, 42);
        ptr::write(s2, num + 1);
    }

    assert_eq!(s, 43);
}
```

它类似于下面的C代码:

```C
#include <assert.h>

int main() {
  int s = 42;

  {
    int* s2 = &s;
    int num = *s2;
    assert(num == 42);
    *s2 = num + 1;
  }

  assert(s == 43);
  return 0;
}
```