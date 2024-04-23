
# 内存分配器
默认情况下, Rust 使用系统中的 libc 提供的内存分配器, 对于 linux 平台来说, 就是
glibc 里面的 [allocator][glibc-allocator].

但是, Rust 也支持使用自定义的内存分配器, 比如说, 在旧的 Rust 版本中经常被使用的
[jemalloc][jemalloc], 目前也仍然可以被使用, 方法也很简单:

首先是引入 `jemallocator` 这个包:
```toml
[dependencies]
jemallocator = "0.3"
```

之后自己代的根文件中定义一个全局内存分配器变量:

```rust
#[global_allocator]
static ALLOC: jemallocator::Jemalloc = jemallocator::Jemalloc;
```

这样就可以让自己的项目使用[jemalloc][jemalloc] 库了.

这里的 `Jemalloc` 是实现了 `alloca::GlobalAlloc` trait 接口的. 该接口只是简单定义了
两个方法:
```rust
pub trait GlobalAlloc {
  unsafe fn alloc(&self, layout: Layout) -> *mut u8;
  unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout);
}
```

## 遗留的问题
- 系统的内存分配器与[jemalloc][jemalloc] 可以混用吗? 会出现什么问题?
- 自己手动实现一个简单版的内存分配器

## 参考
- https://doc.rust-lang.org/stable/edition-guide/rust-next/no-jemalloc.html
- https://doc.rust-lang.org/stable/edition-guide/rust-2018/platform-and-target-support/global-allocators.html
- https://doc.rust-lang.org/std/alloc/trait.GlobalAlloc.html

[glibc-allocator]: https://www.gnu.org/software/libc/manual/html_node/Memory-Allocation.html
[jemalloc]: http://jemalloc.net/
