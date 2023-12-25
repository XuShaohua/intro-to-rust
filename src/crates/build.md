
# 构建脚本 Build Script

通过编写 `build.rs` 来自定义 `cargo` 的编译过程, 可以生成环境变量, cfg 属性, 以及文件.

可以读取环境变量, 标准输出会写入到 `target/debug/build/<pkg>/output`. 

以 `cargo:` 开头的行也会被 cargo 直接解析并使用, 可以用这种方式来定义一些参数:

```rust
let out_dir = format!(...);
println!("cargo:rustc-link-search=native={}", out_dir);
println!("cargo:rustc-link-lib=static=syscall");

println!("cargo:rustc-cfg=nightly");
```

以上代码, 就是定义了三个变量, 前面的两个是给 `rustc` 用于查找静态库的; 第三个
定义的 `config` 选项可以在 crates 代码里使用, 相当于条件编译.
