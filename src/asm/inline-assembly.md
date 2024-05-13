# 内联汇编 Inline Assembly

稳定版(stable)的 rust , 目前支持在这些架构上使用行汇编:

- x86
- x86_64
- arm
- aarch64
- riscv64
- loongarch64

其它架构 (`target_arch`) 下在编译时就会报错.

当然了, 不稳定版(unstable)的 rust, 支持所有架构上使用行汇编.
