
# 与C语言兼容的结构体

使用 `#repr(C)]` 标志, 可以让 Rust 中定义的结构体的内存布局与 C 编译器生成的保持一致.
除了使用相同的内存排布方式外, 其结构体中的元素, 也应该选用与C语言兼容的类型.

对于结构体内存排布, C/C++编译器里的规则概括如下:
- 结构体里的元素顺序, 与其声明顺序保持一致
- 毎个元素都要占用独立的内存地址
- 内存对齐规则(待补充)

```rust
use std::ffi::{c_int, c_ulong};

#[repr(C)]
#[derive(Debug, Default, Clone, Copy)]
#[allow(non_camel_case_types)]
pub struct shm_info_t {
    pub used_ids: c_int,
    /// total allocated shm
    pub shm_tot: c_ulong,
    /// total resident shm
    pub shm_rss: c_ulong,
    /// total swapped shm
    pub shm_swp: c_ulong,
    swap_attempts: c_ulong,
    swap_successes: c_ulong,
}
```

与之对应的, 在C语言中的定义是:
```C
struct shm_info {
	int used_ids;
	__kernel_ulong_t shm_tot;	/* total allocated shm */
	__kernel_ulong_t shm_rss;	/* total resident shm */
	__kernel_ulong_t shm_swp;	/* total swapped shm */
	__kernel_ulong_t swap_attempts;
	__kernel_ulong_t swap_successes;
};
```

## 枚举类型
枚举类型与结构体的声明方式类似, 看一个`linux/perf_event.h` 中的例子:

```rust
/// attr.type
#[repr(u8)]
#[allow(non_camel_case_types)]
pub enum perf_type_id_t {
    PERF_TYPE_HARDWARE = 0,
    PERF_TYPE_SOFTWARE = 1,
    PERF_TYPE_TRACEPOINT = 2,
    PERF_TYPE_HW_CACHE = 3,
    PERF_TYPE_RAW = 4,
    PERF_TYPE_BREAKPOINT = 5,

    /// non-ABI
    PERF_TYPE_MAX = 6,
}
```

默认情况下, C语言中的枚举类型使用 `int` 作为基础类型, 但也可以手动指定别的类型, 比如:
```C
#include <stdint.h>

enum perf_type_id_t : uint16_t {
    PERF_TYPE_HARDWARE = 0,
    PERF_TYPE_SOFTWARE = 1,
    PERF_TYPE_TRACEPOINT = 2,
    PERF_TYPE_HW_CACHE = 3,
    PERF_TYPE_RAW = 4,
    PERF_TYPE_BREAKPOINT = 5,

    // non-ABI
    PERF_TYPE_MAX = 6,
};
```

此时, 在 Rust 中, 可以使用 `#[repr(u16)]` 标记来实现一致的定义:
```rust
#[repr(u16)]
#[allow(non_camel_case_types)]
pub enum perf_type_id_t {
    PERF_TYPE_HARDWARE = 0,
    PERF_TYPE_SOFTWARE = 1,
    PERF_TYPE_TRACEPOINT = 2,
    PERF_TYPE_HW_CACHE = 3,
    PERF_TYPE_RAW = 4,
    PERF_TYPE_BREAKPOINT = 5,

    // non-ABI
    PERF_TYPE_MAX = 6,
}
```