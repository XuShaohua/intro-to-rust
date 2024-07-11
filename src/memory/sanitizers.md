# Sanitizers

Sanitizers 是较轻量级的内存检测工具, 最初是在 C/C++ 编译器中实现的.

Rustc 支持的 sanitizer 种类有:

- [AddressSanitizer](https://clang.llvm.org/docs/AddressSanitizer.html), 选项名是 `address`, 支持检测以下问题:
    - 堆内存越界 (out-of-bounds of heap), 栈内存越界, 全局变量越界
    - 访问已被释放的内存 use after free
    - 重复释放的内存 double free
    - 释放无效内存 invalid free
    - 内存没有被释放, 造成泄露 memory leak
- [LeakSanitizer](https://clang.llvm.org/docs/LeakSanitizer.html), 选项名是 `leak`, 用于检测内存泄露,
  可以配合 `address` 选项使用
- [MemorySanitizer](https://clang.llvm.org/docs/MemorySanitizer.html), 选项名是 `memory`, 用于检测读取未初始化的内存
- [ThreadSanitizer](https://clang.llvm.org/docs/ThreadSanitizer.html), 选项名是 `thread`, 用于检测数据竞态 (data race)
- [ControlFlowIntegrity](https://clang.llvm.org/docs/ControlFlowIntegrity.html)
- [Hardware-associated AddressSanitizer](https://clang.llvm.org/docs/HardwareAssistedAddressSanitizerDesign.html)
- [KernelControlFlowIntegrity](https://clang.llvm.org/docs/ControlFlowIntegrity.html#fsanitize-kcfi)

目前只有 nightly 通道的 rust 工具链支持 Sanitizers, 使用 `-Z santizier=xxx` 来激活相应的工具.

## 检测内存泄露

比如, 下面的示例代码中有两个泄露位点:

```rust
{{#include assets/san-memory-leak.rs:5:}}
```

```bash
RUSTFLAGS="-Zsanitizer=address" cargo +nightly run --bin san-memory-leak
```

运行后产生了如下的日志:

```text
{{#include assets/san-memory-leak.san.log}}
```

尽管它成功检测出了两处内存泄露, 但是只有其中一个错误包含了精确的内存泄露位置:

- `#13 0x55da5c20ffff in san_memory_leak::main::hcfa228fc530e0524 /tmp/san-memory-leak.rs:8:15`

## 参考

- [sanitizers in rust](https://rustc-dev-guide.rust-lang.org/sanitizers.html)
