# mem::transmute() 函数

这个函数用于将一个值从当前类型转换成另一种类型. 类似于C语言中的强制类型转换.
要注意的是, 源类型与目标类型应该大小相同.

```rust
use std::mem;

fn main() {
    let pack: [u8; 4] = [0x01, 0x02, 0x03, 0x04];
    let pack_u32 = unsafe { mem::transmute::<[u8; 4], u32>(pack) };
    assert_eq!(pack_u32, 0x04030201);
}
```

相同的功能, 用C语言实现:

```C
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

int main() {
  uint8_t pack[4] = {0x01, 0x02, 0x03, 0x04};
  uint32_t pack_u32 = *(uint32_t*)pack;
  assert(pack_u32 == 0x04030201);

  return 0;
}
```