# Atomic

`filetime` 包里利用了 `AtomicBool` 来标注某个系统调用是否可用, 当第一次调用该系统
接口时, 如果失败了, 返回的是 `ENOSYS` 错误的话, 就会修改该 `AtomicBool` 的值, 并
回退到默认实现. 之后再使用该函数时, 就会直接跳过访问系统调用的步骤:

```rust
fn set_times(
    p: &Path,
    atime: Option<FileTime>,
    mtime: Option<FileTime>,
    symlink: bool,
) -> io::Result<()> {
    let flags = if symlink {
        libc::AT_SYMLINK_NOFOLLOW
    } else {
        0
    };

    // Same as the `if` statement above.
    static INVALID: AtomicBool = AtomicBool::new(false);
    if !INVALID.load(SeqCst) {
        let p = CString::new(p.as_os_str().as_bytes())?;
        let times = [super::to_timespec(&atime), super::to_timespec(&mtime)];
        let rc = unsafe {
            libc::syscall(
                libc::SYS_utimensat,
                libc::AT_FDCWD,
                p.as_ptr(),
                times.as_ptr(),
                flags,
            )
        };
        if rc == 0 {
            return Ok(());
        }
        let err = io::Error::last_os_error();
        if err.raw_os_error() == Some(libc::ENOSYS) {
            INVALID.store(true, SeqCst);
        } else {
            return Err(err);
        }
    }

    super::utimes::set_times(p, atime, mtime, symlink)
}
```

## References

- [LLVM Atomic Instructions and Concurrency Guide](https://llvm.org/docs/Atomics.html)
- [std::memory_order](https://en.cppreference.com/w/cpp/atomic/memory_order)
- [Portable atomic](https://github.com/taiki-e/portable-atomic)