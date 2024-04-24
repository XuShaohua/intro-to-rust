# jemalloc 库

经常被使用的 [jemalloc][jemalloc]:

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

## 遗留的问题

- 系统的内存分配器与[jemalloc][jemalloc] 可以混用吗? 会出现什么问题?

[jemalloc]: http://jemalloc.net/
