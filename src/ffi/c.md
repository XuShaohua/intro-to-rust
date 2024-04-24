# C ffi

## Box 指针

在生成 C/C++ 库时, 会经常使用 Box 来包装内部的类, 将其导出为C语言可访问的指针.
比如 `sysinfo` 库, 它大量地运用了这种写法:

```rust, ignore
use std::ffi::{c_char, c_void};
use libc::pid_t;

/// Equivalent of [`System`][crate::System] struct.
pub type CSystem = *mut c_void;
/// Equivalent of [`Process`][crate::Process] struct.
pub type CProcess = *const c_void;
/// C string returned from `CString::into_raw`.
pub type RString = *const c_char;
/// Callback used by [`get_processes`][crate::System#method.processes].
pub type ProcessLoop = extern "C" fn(pid: pid_t, process: CProcess, data: *mut c_void) -> bool;

/// Equivalent of [`System::new()`][crate::System#method.new].
#[no_mangle]
pub extern "C" fn sysinfo_init() -> CSystem {
    let system = Box::new(System::new());
    Box::into_raw(system) as CSystem
}

/// Equivalent of `System::drop()`. Important in C to cleanup memory.
#[no_mangle]
pub extern "C" fn sysinfo_destroy(system: CSystem) {
    assert!(!system.is_null());
    unsafe {
        Box::from_raw(system as *mut System);
    }
}

/// Equivalent of [`System::refresh_system()`][crate::System#method.refresh_system].
#[no_mangle]
pub extern "C" fn sysinfo_refresh_system(system: CSystem) {
    assert!(!system.is_null());
    let mut system: Box<CSystem> = unsafe { Box::from_raw(system as *mut CSystem) };
    {
        let system: &mut System = system.borrow_mut();
        system.refresh_system();
    }
    Box::into_raw(system);
}
```

这里要注意的是, 当从C语言中传入的指针被强制转为 Box 指针类型后, 可以安全地进行操作;
当这些工作完成后, 需要显式地调用 `Box::into_raw()` 再将 Box 类型的指针转回到 raw pointer.
不然后话, 在当前作用域结束时, 这个 Box 指针会被释放掉.