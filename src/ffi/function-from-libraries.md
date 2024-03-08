
# 使用外部库中的函数

如果要使用特定库里的函数, 可以给 `extern` 代码块添加 `#[link]` 属性, 来声明对方库的名称, 路径及库的类别等.

```rust, no_run
use std::os::raw::c_int;

#[link(name = "git2", kind = "static")]
extern "C" {
    pub fn git_libgit2_init() -> c_int;
}
```
这里, 链接器会在默认的查找路径 (LD_LIBRARY_PATH) 里面尝试寻找 `libgit2.a` 并与它链接一起;

如果这个库不在默认路径里, 可以这样做:
1. 设置环境变量, `export LD_LIBRARY_PATH=/path/to/libgit2.a:$LD_LIBRARY_PATH`, 再编译
2. 或者添加 `build.rs` 文件, 在里面声明库的路径:
```rust, no_run
fn main() {
    println!(r"cargo:rustc-link-search=native=/path/to//libgit2.a");
} 
```

以 [nc](https://crates.io/crates/nc) 绑定 `libsyscall.a` 为例:

```rust, no_run
use super::types::{check_errno, Errno, Sysno};

// 链接到 libsyscall.a, 是静态库
// 以下是该库中的七个函数的声明
#[link(name = "syscall", kind = "static")]
extern "C" {
    pub fn __syscall0(n: usize) -> usize;

    pub fn __syscall1(n: usize, a1: usize) -> usize;

    pub fn __syscall2(n: usize, a1: usize, a2: usize) -> usize;

    pub fn __syscall3(n: usize, a1: usize, a2: usize, a3: usize) -> usize;

    pub fn __syscall4(n: usize, a1: usize, a2: usize, a3: usize, a4: usize) -> usize;

    pub fn __syscall5(n: usize, a1: usize, a2: usize, a3: usize, a4: usize, a5: usize) -> usize;

    pub fn __syscall6(
        n: usize,
        a1: usize,
        a2: usize,
        a3: usize,
        a4: usize,
        a5: usize,
        a6: usize,
    ) -> usize;
}

// 以下是对 `libsyscall.a` 库中的几个函数的重新包装, 会检查它们运行后的返回值.
#[inline]
pub unsafe fn syscall0(n: Sysno) -> Result<usize, Errno> {
    check_errno(__syscall0(n))
}

#[inline]
pub unsafe fn syscall1(n: Sysno, a1: usize) -> Result<usize, Errno> {
    check_errno(__syscall1(n, a1))
}

#[inline]
pub unsafe fn syscall2(n: Sysno, a1: usize, a2: usize) -> Result<usize, Errno> {
    check_errno(__syscall2(n, a1, a2))
}

#[inline]
pub unsafe fn syscall3(n: Sysno, a1: usize, a2: usize, a3: usize) -> Result<usize, Errno> {
    check_errno(__syscall3(n, a1, a2, a3))
}

#[inline]
pub unsafe fn syscall4(
    n: Sysno,
    a1: usize,
    a2: usize,
    a3: usize,
    a4: usize,
) -> Result<usize, Errno> {
    check_errno(__syscall4(n, a1, a2, a3, a4))
}

#[inline]
pub unsafe fn syscall5(
    n: Sysno,
    a1: usize,
    a2: usize,
    a3: usize,
    a4: usize,
    a5: usize,
) -> Result<usize, Errno> {
    check_errno(__syscall5(n, a1, a2, a3, a4, a5))
}

#[inline]
pub unsafe fn syscall6(
    n: Sysno,
    a1: usize,
    a2: usize,
    a3: usize,
    a4: usize,
    a5: usize,
    a6: usize,
) -> Result<usize, Errno> {
    check_errno(__syscall6(n, a1, a2, a3, a4, a5, a6))
}
```