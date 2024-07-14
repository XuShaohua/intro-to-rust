# 内存分配器关系图

- `GlobalAlloc` trait
- `Allocator` trait
- struct System, `impl GlobalAlloc`
- struct Global, `impl Allocator`
- allocator-api
