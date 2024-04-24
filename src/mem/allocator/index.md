# 内存分配器

默认情况下, Rust 使用系统中的 libc 提供的内存分配器, 对于 linux 平台来说, 就是
glibc 里面的 [allocator][glibc-allocator].

但是, Rust 也支持使用自定义的内存分配器.

这里的 `Jemalloc` 是实现了 `alloca::GlobalAlloc` trait 接口的. 该接口只是简单定义了
两个方法:

```rust
pub trait GlobalAlloc {
  unsafe fn alloc(&self, layout: Layout) -> *mut u8;
  unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout);
}
```

## 参考

- https://doc.rust-lang.org/stable/edition-guide/rust-next/no-jemalloc.html
- https://doc.rust-lang.org/stable/edition-guide/rust-2018/platform-and-target-support/global-allocators.html
- https://doc.rust-lang.org/std/alloc/trait.GlobalAlloc.html

[glibc-allocator]: https://www.gnu.org/software/libc/manual/html_node/Memory-Allocation.html
