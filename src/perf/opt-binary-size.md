# 优化二进制文件大小

## codegen-units = 1

## panic = "abort"

## strip = true

## strip -R .rustc

## Profile-guided Optimization: pgo

## Link Time Optimization: lto

# 参考
- [Linker-plugin-based LTO](https://doc.rust-lang.org/rustc/linker-plugin-lto.html)
- [Profile-guided Optimization](https://doc.rust-lang.org/rustc/profile-guided-optimization.html)
