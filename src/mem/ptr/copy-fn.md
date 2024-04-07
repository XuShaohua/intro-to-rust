# ptr::copy() 与 ptr::copy_nonoverlapping() 函数

这两个函数都用于将一块内存从 src 拷贝到目的地址.

```rust, not_run
pub const unsafe fn copy<T>(src: *const T, dst: *mut T, count: usize);

pub const unsafe fn copy_nonoverlapping<T>(
    src: *const T,
    dst: *mut T,
    count: usize
);
```

它们的区别在于:

- `copy()` 中的 src 和 dst 是可以有内存重叠的, 类似于 C 语言中的 `memmove()`
- `copy_nonoverlaping()` 中的 src 和 dst 不可以有内存重叠, 类似于 C 语言中的 `memcopy()`

看一个例子:

```rust
use std::ptr;

fn main() {
    let src = b"hello";
    let mut dst = b"world".to_vec();

    unsafe {
        ptr::copy(
            ptr::from_ref(&src[0]),
            ptr::from_mut(&mut dst[0]),
            src.len(),
        );
    }
    assert_eq!(dst, src);

    unsafe {
        ptr::copy_nonoverlapping(ptr::from_ref(&src[0]), ptr::from_mut(&mut dst[4]), 1);
    }
    assert_eq!(dst[4], b'h');
}
```

对应的 C 语言的实现:

```C
#include <assert.h>
#include <string.h>
#include <stdlib.h>

int main() {
  const char src[] = "hello";
  char dst[] = "world";
  memmove(dst, src, strlen(src));
  assert(strcmp(dst, "hello") == 0);

  memcpy(&dst[4], src, 1);
  assert(dst[4] == 'h');

  return 0;
}
```